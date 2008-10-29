/*
 * Valadoc - a documentation tool for vala.
 * Copyright (C) 2008 Florian Brosch
 * 
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

using Valadoc;
using GLib;
using Vala;
using Gee;




public class ExceptionHtmlTaglet : MainTaglet {
	private Gee.ArrayList<Taglet> content = new Gee.ArrayList<Taglet> ();
	private string paramname = "";

	public override int order {
		get { return 200; }
	}

	public override bool write_block_start ( void* ptr ) {
		weak GLib.FileStream file = (GLib.FileStream)ptr;

		file.printf ( "<h2 class=\"%s\">Exceptions:</h2>\n", css_title );
		file.printf ( "<table class=\"%s\">\n", css_exception_table );
		return true;
	}

	public override bool write_block_end ( void* ptr ) {
		weak GLib.FileStream file = (GLib.FileStream)ptr;

		file.printf ( "</table>\n" );
		return true;
	}

	private bool check_exception_parameter_name ( Valadoc.ExceptionHandler me, string paramname ) {
		if ( paramname[0] == '.' )
			return false;

		foreach ( Valadoc.TypeReference param in me.get_error_domains() ) {
			if ( param.type_name.has_suffix ( paramname ) )
				return true;
		}
		return false;
	}

	public override bool parse ( Valadoc.Settings settings, Valadoc.Tree tree, Valadoc.Reporter reporter, string line_start, int line, int pos, Valadoc.Basic me, Gee.ArrayList<Taglet> content ) {
		if ( content.size == 0 ) {
			string error_start = this.extract_lines ( line_start, 0, 0 );
			reporter.add_error ( 0, pos, 0, pos+7, "Errordomain was expected.\n", error_start );
			return false;
		}

		Taglet tag = content.get( 0 );
		if ( tag is StringTaglet == false ) {
			string error_start = this.extract_lines ( line_start, 0, 0 );
			reporter.add_error ( 0, pos, 0, pos+6, "Errordomain was expected.\n", error_start );
			return false;
		}

		string strpos = ((StringTaglet)tag).content;
		string paramname;

		strpos = this.get_next_word ( strpos, out paramname );
		((StringTaglet)tag).content = strpos;
		this.paramname = paramname;

		if ( this.paramname == "" ) {
			string error_start = this.extract_lines ( line_start, 0, 0 );
			reporter.add_error ( 0, pos, 0, pos+6, "Errordomain was expected.\n", error_start );
			return false;
		}

		if ( !check_exception_parameter_name ( ((Valadoc.ExceptionHandler)me), this.paramname ) ) {
			string error_start = this.extract_lines ( line_start, 0, 0 );
			reporter.add_error ( 0, pos, 0, pos+6, "Unknown parameter.\n", error_start );
			return false;
		}

		this.content = content;
		return true;
	}

	public override bool write ( void* ptr, int max, int index ) {
		weak GLib.FileStream file = (GLib.FileStream)ptr;

		file.printf ( "\t<tr>\n" );
		file.printf ( "\t\t<td class=\"%s\">ptr:</td>\n", css_parameter_table_name );
		file.printf ( "\t\t<td class=\"%s\">\n", css_parameter_table_text );
		file.puts ( "\t\t\t" );

		int _max = this.content.size;
		int _index = 0;

		foreach ( Taglet tag in this.content ) {
			tag.write ( ptr, _max, _index );
			_index++;
		}

		file.puts ( "\n" );
		file.printf ( "\t\t</td>\n" );
		file.printf ( "\t</tr>\n" );
		return true;
	}
}



[ModuleInit]
public GLib.Type register_plugin ( Gee.HashMap<string, Type> taglets ) {
        GLib.Type type = typeof ( ExceptionHtmlTaglet );
		taglets.set ( "throws", type );
		return type;
}

