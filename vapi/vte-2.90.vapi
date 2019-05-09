/* vte-2.90.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Vte", gir_namespace = "Vte", gir_version = "2.90", lower_case_cprefix = "vte_")]
[Version (deprecated = true, replacement = "vte-2.91")]
namespace Vte {
	[CCode (cheader_filename = "vte/vte.h", type_id = "vte_pty_get_type ()")]
	[Version (since = "0.26")]
	public class Pty : GLib.Object, GLib.Initable {
		[CCode (has_construct_function = false)]
		public Pty (Vte.PtyFlags flags) throws GLib.Error;
		public void child_setup ();
		public void close ();
		[CCode (has_construct_function = false)]
		public Pty.foreign (int fd) throws GLib.Error;
		public int get_fd ();
		public bool get_size (out int rows, out int columns) throws GLib.Error;
		public bool set_size (int rows, int columns) throws GLib.Error;
		public void set_term (string? emulation);
		public bool set_utf8 (bool utf8) throws GLib.Error;
		public int fd { get; construct; }
		[NoAccessorMethod]
		public Vte.PtyFlags flags { get; construct; }
		[NoAccessorMethod]
		public string term { owned get; set; }
	}
	[CCode (cheader_filename = "vte/vte.h", type_id = "vte_terminal_get_type ()")]
	public class Terminal : Gtk.Widget, Atk.Implementor, Gtk.Buildable, Gtk.Scrollable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Terminal ();
		public void copy_primary ();
		public void feed ([CCode (array_length_cname = "length", array_length_pos = 1.1, array_length_type = "glong")] uint8[] data);
		public void feed_child (string text, long length);
		[Version (since = "0.12.1")]
		public void feed_child_binary (string data, long length);
		[Version (since = "0.26")]
		public bool fork_command_full (Vte.PtyFlags pty_flags, string? working_directory, [CCode (array_length = false, array_null_terminated = true)] string[] argv, [CCode (array_length = false, array_null_terminated = true)] string[]? envv, GLib.SpawnFlags spawn_flags, [CCode (delegate_target_pos = 6.5)] GLib.SpawnChildSetupFunc? child_setup, out GLib.Pid child_pid) throws GLib.Error;
		public bool get_allow_bold ();
		public bool get_audible_bell ();
		public long get_char_height ();
		public long get_char_width ();
		[Version (since = "0.20")]
		public int get_child_exit_status ();
		public long get_column_count ();
		[Version (since = "0.34")]
		public unowned string get_current_directory_uri ();
		[Version (since = "0.34")]
		public unowned string get_current_file_uri ();
		[Version (since = "0.17.1")]
		public Vte.TerminalCursorBlinkMode get_cursor_blink_mode ();
		public void get_cursor_position (out long column, out long row);
		[Version (since = "0.17.6")]
		public Vte.TerminalCursorShape get_cursor_shape ();
		[Version (since = "0.11.11")]
		public unowned string get_default_emulation ();
		public unowned string get_emulation ();
		public unowned string get_encoding ();
		public unowned Pango.FontDescription get_font ();
		public bool get_has_selection ();
		public unowned string get_icon_title ();
		public bool get_mouse_autohide ();
		[Version (since = "0.26")]
		public unowned Vte.Pty get_pty_object ();
		public long get_row_count ();
		public unowned string get_status_line ();
		public string get_text ([CCode (delegate_target_pos = 1.5)] Vte.SelectionFunc? is_selected, out GLib.Array<Vte.CharAttributes?> attributes);
		[Version (since = "0.11.11")]
		public string get_text_include_trailing_spaces ([CCode (delegate_target_pos = 1.5)] Vte.SelectionFunc? is_selected, out GLib.Array<Vte.CharAttributes?> attributes);
		public string get_text_range (long start_row, long start_col, long end_row, long end_col, [CCode (delegate_target_pos = 5.5)] Vte.SelectionFunc? is_selected, out GLib.Array<Vte.CharAttributes?> attributes);
		public bool get_visible_bell ();
		public unowned string get_window_title ();
		public void im_append_menuitems (Gtk.MenuShell menushell);
		public bool is_word_char (unichar c);
		[Version (since = "0.17.1")]
		public int match_add_gregex (GLib.Regex regex, GLib.RegexMatchFlags flags);
		public string? match_check (long column, long row, out int tag);
		public void match_clear_all ();
		public void match_remove (int tag);
		[Version (since = "0.11")]
		public void match_set_cursor (int tag, Gdk.Cursor? cursor);
		[Version (since = "0.17.1")]
		public void match_set_cursor_name (int tag, string cursor_name);
		[Version (since = "0.11.9")]
		public void match_set_cursor_type (int tag, Gdk.CursorType cursor_type);
		public void paste_primary ();
		[Version (since = "0.26")]
		public Vte.Pty pty_new (Vte.PtyFlags flags) throws GLib.Error;
		public void reset (bool clear_tabstops, bool clear_history);
		[Version (since = "0.26")]
		public bool search_find_next ();
		[Version (since = "0.26")]
		public bool search_find_previous ();
		[Version (since = "0.26")]
		public unowned GLib.Regex search_get_gregex ();
		[Version (since = "0.26")]
		public bool search_get_wrap_around ();
		[Version (since = "0.26")]
		public void search_set_gregex (GLib.Regex? regex);
		[Version (since = "0.26")]
		public void search_set_wrap_around (bool wrap_around);
		[Version (since = "0.16")]
		public void select_all ();
		[Version (since = "0.16")]
		public void select_none ();
		public void set_allow_bold (bool allow_bold);
		public void set_audible_bell (bool is_audible);
		public void set_background_image (Gdk.Pixbuf? image);
		public void set_background_image_file (string path);
		public void set_background_saturation (double saturation);
		[Version (since = "0.11")]
		public void set_background_tint_color (Gdk.Color color);
		public void set_background_transparent (bool transparent);
		public void set_backspace_binding (Vte.TerminalEraseBinding binding);
		public void set_color_background (Gdk.Color background);
		[Version (since = "0.28")]
		public void set_color_background_rgba (Gdk.RGBA background);
		public void set_color_bold (Gdk.Color bold);
		public void set_color_bold_rgba (Gdk.RGBA? bold);
		[Version (since = "0.11.11")]
		public void set_color_cursor (Gdk.Color? cursor_background);
		[Version (since = "0.28")]
		public void set_color_cursor_rgba (Gdk.RGBA? cursor_background);
		public void set_color_dim (Gdk.Color dim);
		[Version (since = "0.28")]
		public void set_color_dim_rgba (Gdk.RGBA? dim);
		public void set_color_foreground (Gdk.Color foreground);
		[Version (since = "0.28")]
		public void set_color_foreground_rgba (Gdk.RGBA foreground);
		[Version (since = "0.11.11")]
		public void set_color_highlight (Gdk.Color? highlight_background);
		[Version (since = "0.28")]
		public void set_color_highlight_rgba (Gdk.RGBA? highlight_background);
		public void set_colors (Gdk.Color? foreground, Gdk.Color? background, [CCode (array_length_cname = "palette_size", array_length_pos = 3.1, array_length_type = "glong")] Gdk.Color[] palette);
		[Version (since = "0.28")]
		public void set_colors_rgba (Gdk.RGBA? foreground, Gdk.RGBA? background, [CCode (array_length_cname = "palette_size", array_length_pos = 3.1, array_length_type = "gsize")] Gdk.RGBA[] palette);
		[Version (since = "0.17.1")]
		public void set_cursor_blink_mode (Vte.TerminalCursorBlinkMode mode);
		[Version (since = "0.20")]
		public void set_cursor_shape (Vte.TerminalCursorShape shape);
		public void set_default_colors ();
		public void set_delete_binding (Vte.TerminalEraseBinding binding);
		public void set_emulation (string? emulation);
		public void set_encoding (string? codeset);
		public void set_font (Pango.FontDescription? font_desc);
		public void set_font_from_string (string name);
		public void set_mouse_autohide (bool setting);
		public void set_opacity (uint16 opacity);
		[Version (since = "0.26.")]
		public void set_pty_object (Vte.Pty? pty);
		[Version (since = "0.11")]
		public void set_scroll_background (bool scroll);
		public void set_scroll_on_keystroke (bool scroll);
		public void set_scroll_on_output (bool scroll);
		public void set_scrollback_lines (long lines);
		public void set_size (long columns, long rows);
		public void set_visible_bell (bool is_visible);
		public void set_word_chars (string spec);
		[Version (since = "0.26")]
		public void watch_child (GLib.Pid child_pid);
		[Version (since = "0.24")]
		public bool write_contents (GLib.OutputStream stream, Vte.TerminalWriteFlags flags, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[Version (since = "0.20")]
		public bool allow_bold { get; set; }
		[Version (since = "0.20")]
		public bool audible_bell { get; set; }
		[NoAccessorMethod]
		public string background_image_file { owned get; set; }
		[NoAccessorMethod]
		[Version (since = "0.20")]
		public Gdk.Pixbuf background_image_pixbuf { owned get; set; }
		[NoAccessorMethod]
		[Version (since = "0.20")]
		public double background_opacity { get; set; }
		[NoAccessorMethod]
		[Version (since = "0.20")]
		public double background_saturation { get; set; }
		[NoAccessorMethod]
		[Version (since = "0.20")]
		public Gdk.Color background_tint_color { owned get; set; }
		[NoAccessorMethod]
		[Version (since = "0.20")]
		public bool background_transparent { get; set; }
		[NoAccessorMethod]
		[Version (since = "0.20")]
		public Vte.TerminalEraseBinding backspace_binding { get; set; }
		[Version (since = "0.34")]
		public string current_directory_uri { get; }
		[Version (since = "0.34")]
		public string current_file_uri { get; }
		[Version (since = "0.20")]
		public Vte.TerminalCursorBlinkMode cursor_blink_mode { get; set; }
		[Version (since = "0.20")]
		public Vte.TerminalCursorShape cursor_shape { get; set; }
		[NoAccessorMethod]
		[Version (since = "0.20")]
		public Vte.TerminalEraseBinding delete_binding { get; set; }
		[Version (since = "0.20")]
		public string emulation { get; set; }
		[Version (since = "0.20")]
		public string encoding { get; set; }
		[NoAccessorMethod]
		[Version (since = "0.20")]
		public Pango.FontDescription font_desc { owned get; set; }
		[Version (since = "0.20")]
		public string icon_title { get; }
		[NoAccessorMethod]
		[Version (since = "0.20")]
		public bool pointer_autohide { get; set; }
		[Version (since = "0.26")]
		public Vte.Pty pty_object { get; set; }
		[NoAccessorMethod]
		[Version (since = "0.20")]
		public bool scroll_background { get; set; }
		[NoAccessorMethod]
		[Version (since = "0.20")]
		public bool scroll_on_keystroke { get; set; }
		[NoAccessorMethod]
		[Version (since = "0.20")]
		public bool scroll_on_output { get; set; }
		[NoAccessorMethod]
		[Version (since = "0.20")]
		public uint scrollback_lines { get; set; }
		[Version (since = "0.20")]
		public bool visible_bell { get; set; }
		[Version (since = "0.20")]
		public string window_title { get; }
		[NoAccessorMethod]
		[Version (since = "0.20")]
		public string word_chars { owned get; set; }
		public virtual signal void beep ();
		public virtual signal void char_size_changed (uint char_width, uint char_height);
		public virtual signal void child_exited ();
		public virtual signal void commit (string text, uint size);
		public virtual signal void contents_changed ();
		[HasEmitter]
		public virtual signal void copy_clipboard ();
		[Version (since = "0.34")]
		public signal void current_directory_uri_changed ();
		[Version (since = "0.34")]
		public signal void current_file_uri_changed ();
		public virtual signal void cursor_moved ();
		public virtual signal void decrease_font_size ();
		public virtual signal void deiconify_window ();
		public virtual signal void emulation_changed ();
		public virtual signal void encoding_changed ();
		public virtual signal void eof ();
		public virtual signal void icon_title_changed ();
		public virtual signal void iconify_window ();
		public virtual signal void increase_font_size ();
		public virtual signal void lower_window ();
		public virtual signal void maximize_window ();
		public virtual signal void move_window (uint x, uint y);
		[HasEmitter]
		public virtual signal void paste_clipboard ();
		public virtual signal void raise_window ();
		public virtual signal void refresh_window ();
		public virtual signal void resize_window (uint width, uint height);
		public virtual signal void restore_window ();
		public virtual signal void selection_changed ();
		public virtual signal void status_line_changed ();
		public virtual signal void text_deleted ();
		public virtual signal void text_inserted ();
		public virtual signal void text_modified ();
		public virtual signal void text_scrolled (int delta);
		public virtual signal void window_title_changed ();
	}
	[CCode (cheader_filename = "vte/vte.h", has_type_id = false)]
	public struct CharAttributes {
	}
	[CCode (cheader_filename = "vte/vte.h", cprefix = "VTE_PTY_", type_id = "vte_pty_flags_get_type ()")]
	[Flags]
	[Version (since = "0.26")]
	public enum PtyFlags {
		NO_LASTLOG,
		NO_UTMP,
		NO_WTMP,
		NO_HELPER,
		NO_FALLBACK,
		DEFAULT
	}
	[CCode (cheader_filename = "vte/vte.h", cprefix = "VTE_ANTI_ALIAS_", type_id = "vte_terminal_anti_alias_get_type ()")]
	public enum TerminalAntiAlias {
		USE_DEFAULT,
		FORCE_ENABLE,
		FORCE_DISABLE
	}
	[CCode (cheader_filename = "vte/vte.h", cprefix = "VTE_CURSOR_BLINK_", type_id = "vte_terminal_cursor_blink_mode_get_type ()")]
	public enum TerminalCursorBlinkMode {
		SYSTEM,
		ON,
		OFF
	}
	[CCode (cheader_filename = "vte/vte.h", cprefix = "VTE_CURSOR_SHAPE_", type_id = "vte_terminal_cursor_shape_get_type ()")]
	public enum TerminalCursorShape {
		BLOCK,
		IBEAM,
		UNDERLINE
	}
	[CCode (cheader_filename = "vte/vte.h", cprefix = "VTE_ERASE_", type_id = "vte_terminal_erase_binding_get_type ()")]
	public enum TerminalEraseBinding {
		AUTO,
		ASCII_BACKSPACE,
		ASCII_DELETE,
		DELETE_SEQUENCE,
		TTY
	}
	[CCode (cheader_filename = "vte/vte.h", cprefix = "VTE_TERMINAL_WRITE_", type_id = "vte_terminal_write_flags_get_type ()")]
	public enum TerminalWriteFlags {
		DEFAULT
	}
	[CCode (cheader_filename = "vte/vte.h", cprefix = "VTE_PTY_ERROR_")]
	[Version (since = "0.26")]
	public errordomain PtyError {
		PTY_HELPER_FAILED,
		PTY98_FAILED;
		public static GLib.Quark quark ();
	}
	[CCode (cheader_filename = "vte/vte.h", instance_pos = 3.9)]
	public delegate bool SelectionFunc (Vte.Terminal terminal, long column, long row);
	[CCode (cheader_filename = "vte/vte.h")]
	public const int MAJOR_VERSION;
	[CCode (cheader_filename = "vte/vte.h")]
	public const int MICRO_VERSION;
	[CCode (cheader_filename = "vte/vte.h")]
	public const int MINOR_VERSION;
	[CCode (cheader_filename = "vte/vte.h")]
	[Version (since = "0.28")]
	public static string? get_user_shell ();
}
