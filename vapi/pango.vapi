/* pango.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Pango", lower_case_cprefix = "pango_", gir_namespace = "Pango", gir_version = "1.0")]
namespace Pango {
	[CCode (cprefix = "PangoScale", lower_case_cprefix = "pango_scale_")]
	namespace Scale {
		[CCode (cheader_filename = "pango/pango.h")]
		public const double LARGE;
		[CCode (cheader_filename = "pango/pango.h")]
		public const double MEDIUM;
		[CCode (cheader_filename = "pango/pango.h")]
		public const double SMALL;
		[CCode (cheader_filename = "pango/pango.h")]
		public const double XX_LARGE;
		[CCode (cheader_filename = "pango/pango.h")]
		public const double XX_SMALL;
		[CCode (cheader_filename = "pango/pango.h")]
		public const double X_LARGE;
		[CCode (cheader_filename = "pango/pango.h")]
		public const double X_SMALL;
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class AttrClass {
		public weak GLib.Callback copy;
		public weak GLib.Callback destroy;
		public weak GLib.Callback equal;
		public Pango.AttrType type;
	}
	[Compact]
	[CCode (free_function = "pango_attribute_destroy", cheader_filename = "pango/pango.h")]
	public class AttrColor : Pango.Attribute {
		public Pango.Color color;
	}
	[Compact]
	[CCode (free_function = "pango_attribute_destroy", cheader_filename = "pango/pango.h")]
	public class AttrFloat : Pango.Attribute {
		public double value;
	}
	[Compact]
	[CCode (free_function = "pango_attribute_destroy", cheader_filename = "pango/pango.h")]
	public class AttrFontDesc : Pango.Attribute {
		public weak Pango.FontDescription desc;
		[CCode (type = "PangoAttribute*", has_construct_function = false)]
		public AttrFontDesc (Pango.FontDescription desc);
	}
	[Compact]
	[CCode (free_function = "pango_attribute_destroy", cheader_filename = "pango/pango.h")]
	public class AttrInt : Pango.Attribute {
		public int value;
	}
	[Compact]
	[CCode (copy_function = "pango_attr_iterator_copy", free_function = "pango_attr_iterator_destroy", cheader_filename = "pango/pango.h")]
	public class AttrIterator {
		public Pango.AttrIterator copy ();
		public unowned Pango.Attribute @get (Pango.AttrType type);
		public unowned GLib.SList get_attrs ();
		public void get_font (Pango.FontDescription desc, out unowned Pango.Language language, GLib.SList extra_attrs);
		public bool next ();
		public void range (int start, int end);
	}
	[Compact]
	[CCode (free_function = "pango_attribute_destroy", cheader_filename = "pango/pango.h")]
	public class AttrLanguage : Pango.Attribute {
		public weak Pango.Language value;
		[CCode (type = "PangoAttribute*", has_construct_function = false)]
		public AttrLanguage (Pango.Language language);
	}
	[Compact]
	[CCode (ref_function = "pango_attr_list_ref", unref_function = "pango_attr_list_unref", type_id = "PANGO_TYPE_ATTR_LIST", cheader_filename = "pango/pango.h")]
	public class AttrList {
		[CCode (has_construct_function = false)]
		public AttrList ();
		public void change (Pango.Attribute attr);
		public Pango.AttrList copy ();
		public unowned Pango.AttrList filter (Pango.AttrFilterFunc func, void* data);
		public Pango.AttrIterator get_iterator ();
		public void insert (owned Pango.Attribute attr);
		public void insert_before (Pango.Attribute attr);
		public void splice (Pango.AttrList other, int pos, int len);
	}
	[Compact]
	[CCode (free_function = "pango_attribute_destroy", cheader_filename = "pango/pango.h")]
	public class AttrShape : Pango.Attribute {
		public weak Pango.Attribute attr;
		public weak Pango.AttrDataCopyFunc copy_func;
		public void* data;
		public weak GLib.DestroyNotify destroy_func;
		public Pango.Rectangle ink_rect;
		public Pango.Rectangle logical_rect;
		[CCode (type = "PangoAttribute*", has_construct_function = false)]
		public AttrShape (Pango.Rectangle ink_rect, Pango.Rectangle logical_rect);
		[CCode (type = "PangoAttribute*", has_construct_function = false)]
		public AttrShape.with_data (Pango.Rectangle ink_rect, Pango.Rectangle logical_rect, void* data, Pango.AttrDataCopyFunc copy_func, GLib.DestroyNotify destroy_func);
	}
	[Compact]
	[CCode (free_function = "pango_attribute_destroy", cheader_filename = "pango/pango.h")]
	public class AttrSize : Pango.Attribute {
		public uint absolute;
		public int size;
		[CCode (type = "PangoAttribute*", has_construct_function = false)]
		public AttrSize (int size);
	}
	[Compact]
	[CCode (free_function = "pango_attribute_destroy", cheader_filename = "pango/pango.h")]
	public class AttrString : Pango.Attribute {
		public weak string value;
	}
	[Compact]
	[CCode (copy_function = "pango_attribute_copy", free_function = "pango_attribute_destroy", cheader_filename = "pango/pango.h")]
	public class Attribute {
		public uint end_index;
		public weak Pango.AttrClass klass;
		public uint start_index;
		public Pango.Attribute copy ();
		public bool equal (Pango.Attribute attr2);
		public void init (Pango.AttrClass klass);
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public class Context : GLib.Object {
		[CCode (has_construct_function = false)]
		public Context ();
		public Pango.Direction get_base_dir ();
		public Pango.Gravity get_base_gravity ();
		public unowned Pango.FontDescription get_font_description ();
		public unowned Pango.FontMap get_font_map ();
		public Pango.Gravity get_gravity ();
		public Pango.GravityHint get_gravity_hint ();
		public unowned Pango.Language get_language ();
		public Pango.Matrix get_matrix ();
		public unowned Pango.FontMetrics get_metrics (Pango.FontDescription desc, Pango.Language language);
		public void list_families (Pango.FontFamily[] families);
		public unowned Pango.Font load_font (Pango.FontDescription desc);
		public unowned Pango.Fontset load_fontset (Pango.FontDescription desc, Pango.Language language);
		public void set_base_dir (Pango.Direction direction);
		public void set_base_gravity (Pango.Gravity gravity);
		public void set_font_description (Pango.FontDescription desc);
		public void set_font_map (Pango.FontMap font_map);
		public void set_gravity_hint (Pango.GravityHint hint);
		public void set_language (Pango.Language language);
		public void set_matrix (Pango.Matrix matrix);
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class ContextClass {
	}
	[Compact]
	[CCode (ref_function = "pango_coverage_ref", unref_function = "pango_coverage_unref", cheader_filename = "pango/pango.h")]
	public class Coverage {
		[CCode (has_construct_function = false)]
		public Coverage ();
		public Pango.Coverage copy ();
		public static unowned Pango.Coverage from_bytes (uchar[] bytes);
		public Pango.CoverageLevel @get (int index_);
		public void max (Pango.Coverage other);
		public void @set (int index_, Pango.CoverageLevel level);
		public void to_bytes (uchar[] bytes);
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class EngineLang {
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class EngineShape {
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public class Font : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Font ();
		public unowned Pango.FontDescription describe ();
		public unowned Pango.FontDescription describe_with_absolute_size ();
		public static void descriptions_free (Pango.FontDescription[] descs);
		public unowned Pango.EngineShape find_shaper (Pango.Language language, uint32 ch);
		public unowned Pango.Coverage get_coverage (Pango.Language language);
		public unowned Pango.FontMap get_font_map ();
		public void get_glyph_extents (Pango.Glyph glyph, out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public unowned Pango.FontMetrics get_metrics (Pango.Language language);
	}
	[Compact]
	[Immutable]
	[CCode (copy_function = "pango_font_description_copy", type_id = "PANGO_TYPE_FONT_DESCRIPTION", cheader_filename = "pango/pango.h")]
	public class FontDescription {
		[CCode (has_construct_function = false)]
		public FontDescription ();
		public bool better_match (Pango.FontDescription old_match, Pango.FontDescription new_match);
		public Pango.FontDescription copy ();
		public bool equal (Pango.FontDescription desc2);
		public static Pango.FontDescription from_string (string str);
		public unowned string get_family ();
		public Pango.Gravity get_gravity ();
		public Pango.FontMask get_set_fields ();
		public int get_size ();
		public bool get_size_is_absolute ();
		public Pango.Stretch get_stretch ();
		public Pango.Style get_style ();
		public Pango.Variant get_variant ();
		public Pango.Weight get_weight ();
		public uint hash ();
		public void merge (Pango.FontDescription desc_to_merge, bool replace_existing);
		public void merge_static (Pango.FontDescription desc_to_merge, bool replace_existing);
		public void set_absolute_size (double size);
		public void set_family (string family);
		public void set_family_static (string family);
		public void set_gravity (Pango.Gravity gravity);
		public void set_size (int size);
		public void set_stretch (Pango.Stretch stretch);
		public void set_style (Pango.Style style);
		public void set_variant (Pango.Variant variant);
		public void set_weight (Pango.Weight weight);
		public unowned string to_filename ();
		public unowned string to_string ();
		public void unset_fields (Pango.FontMask to_unset);
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public class FontFace : GLib.Object {
		[CCode (has_construct_function = false)]
		protected FontFace ();
		public unowned Pango.FontDescription describe ();
		public unowned string get_face_name ();
		public bool is_synthesized ();
		public void list_sizes (int[] sizes);
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public class FontFamily : GLib.Object {
		[CCode (has_construct_function = false)]
		protected FontFamily ();
		public unowned string get_name ();
		public bool is_monospace ();
		public void list_faces (Pango.FontFace[] faces);
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public class FontMap : GLib.Object {
		[CCode (has_construct_function = false)]
		protected FontMap ();
		public unowned Pango.Context create_context ();
		public void list_families (Pango.FontFamily[] families);
		public unowned Pango.Font load_font (Pango.Context context, Pango.FontDescription desc);
		public unowned Pango.Fontset load_fontset (Pango.Context context, Pango.FontDescription desc, Pango.Language language);
	}
	[Compact]
	[CCode (ref_function = "pango_font_metrics_ref", unref_function = "pango_font_metrics_unref", type_id = "PANGO_TYPE_FONT_METRICS", cheader_filename = "pango/pango.h")]
	public class FontMetrics {
		public int get_approximate_char_width ();
		public int get_approximate_digit_width ();
		public int get_ascent ();
		public int get_descent ();
		public int get_strikethrough_position ();
		public int get_strikethrough_thickness ();
		public int get_underline_position ();
		public int get_underline_thickness ();
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public class Fontset : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Fontset ();
		public void @foreach (Pango.FontsetForeachFunc func, void* data);
		public unowned Pango.Font get_font (uint wc);
		public unowned Pango.FontMetrics get_metrics ();
	}
	[Compact]
	[CCode (copy_function = "pango_glyph_item_copy", type_id = "PANGO_TYPE_GLYPH_ITEM", cheader_filename = "pango/pango.h")]
	public class GlyphItem {
		public weak Pango.GlyphString glyphs;
		public weak Pango.Item item;
		public unowned GLib.SList apply_attrs (string text, Pango.AttrList list);
		public Pango.GlyphItem copy ();
		public void get_logical_widths (string text, int logical_widths);
		public void letter_space (string text, Pango.LogAttr[] log_attrs, int letter_spacing);
		public Pango.GlyphItem split (string text, int split_index);
	}
	[Compact]
	[CCode (copy_function = "pango_glyph_string_copy", type_id = "PANGO_TYPE_GLYPH_STRING", cheader_filename = "pango/pango.h")]
	public class GlyphString {
		[CCode (array_length_cname = "num_glyphs")]
		public Pango.GlyphInfo[] glyphs;
		[CCode (array_length_cname = "num_glyphs")]
		public int[] log_clusters;
		public int num_glyphs;
		public int space;
		[CCode (has_construct_function = false)]
		public GlyphString ();
		public Pango.GlyphString copy ();
		public void extents (Pango.Font font, out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public void extents_range (int start, int end, Pango.Font font, out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public void get_logical_widths (string text, int length, int embedding_level, int logical_widths);
		public int get_width ();
		public void index_to_x (string text, int length, Pango.Analysis analysis, int index_, bool trailing, int x_pos);
		public void set_size (int new_len);
		public void x_to_index (string text, int length, Pango.Analysis analysis, int x_pos, int index_, int trailing);
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class GlyphUnit {
	}
	[Compact]
	[CCode (copy_function = "pango_item_copy", type_id = "PANGO_TYPE_ITEM", cheader_filename = "pango/pango.h")]
	public class Item {
		public Pango.Analysis analysis;
		public int length;
		public int num_chars;
		public int offset;
		[CCode (has_construct_function = false)]
		public Item ();
		public Pango.Item copy ();
		public unowned Pango.Item split (int split_index, int split_offset);
	}
	[Compact]
	[CCode (type_id = "PANGO_TYPE_LANGUAGE", cheader_filename = "pango/pango.h")]
	public class Language {
		public static unowned Pango.Language from_string (string language);
		public static unowned Pango.Language get_default ();
		public unowned string get_sample_string ();
		public Pango.Script get_scripts (int num_scripts);
		public bool includes_script (Pango.Script script);
		public bool matches (string range_list);
		public unowned string to_string ();
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public class Layout : GLib.Object {
		[CCode (has_construct_function = false)]
		public Layout (Pango.Context context);
		public void context_changed ();
		public Pango.Layout copy ();
		public Pango.Alignment get_alignment ();
		public unowned Pango.AttrList get_attributes ();
		public bool get_auto_dir ();
		public int get_baseline ();
		public unowned Pango.Context get_context ();
		public void get_cursor_pos (int index_, out Pango.Rectangle strong_pos, out Pango.Rectangle weak_pos);
		public Pango.EllipsizeMode get_ellipsize ();
		public void get_extents (out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public unowned Pango.FontDescription get_font_description ();
		public int get_height ();
		public int get_indent ();
		public unowned Pango.LayoutIter get_iter ();
		public bool get_justify ();
		public unowned Pango.LayoutLine get_line (int line);
		public int get_line_count ();
		public unowned Pango.LayoutLine get_line_readonly (int line);
		public unowned GLib.SList get_lines ();
		public unowned GLib.SList get_lines_readonly ();
		public void get_log_attrs (out Pango.LogAttr[] attrs);
		public void get_pixel_extents (out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public void get_pixel_size (out int width, out int height);
		public bool get_single_paragraph_mode ();
		public void get_size (out int width, out int height);
		public int get_spacing ();
		public unowned Pango.TabArray get_tabs ();
		public unowned string get_text ();
		public int get_unknown_glyphs_count ();
		public int get_width ();
		public Pango.WrapMode get_wrap ();
		public void index_to_line_x (int index_, bool trailing, int line, int x_pos);
		public void index_to_pos (int index_, out Pango.Rectangle pos);
		public bool is_ellipsized ();
		public bool is_wrapped ();
		public void move_cursor_visually (bool strong, int old_index, int old_trailing, int direction, int new_index, int new_trailing);
		public void set_alignment (Pango.Alignment alignment);
		public void set_attributes (Pango.AttrList attrs);
		public void set_auto_dir (bool auto_dir);
		public void set_ellipsize (Pango.EllipsizeMode ellipsize);
		public void set_font_description (Pango.FontDescription desc);
		public void set_height (int height);
		public void set_indent (int indent);
		public void set_justify (bool justify);
		public void set_markup (string markup, int length);
		public void set_markup_with_accel (string markup, int length, unichar accel_marker, unichar accel_char);
		public void set_single_paragraph_mode (bool setting);
		public void set_spacing (int spacing);
		public void set_tabs (Pango.TabArray tabs);
		public void set_text (string text, int length);
		public void set_width (int width);
		public void set_wrap (Pango.WrapMode wrap);
		public bool xy_to_index (int x, int y, int index_, int trailing);
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class LayoutClass {
	}
	[Compact]
	[CCode (copy_function = "pango_layout_iter_copy", type_id = "PANGO_TYPE_LAYOUT_ITER", cheader_filename = "pango/pango.h")]
	public class LayoutIter {
		public bool at_last_line ();
		public Pango.LayoutIter copy ();
		public int get_baseline ();
		public void get_char_extents (out Pango.Rectangle logical_rect);
		public void get_cluster_extents (out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public int get_index ();
		public unowned Pango.Layout get_layout ();
		public void get_layout_extents (out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public unowned Pango.LayoutLine get_line ();
		public void get_line_extents (out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public unowned Pango.LayoutLine get_line_readonly ();
		public void get_line_yrange (out int y0_, out int y1_);
		public unowned Pango.LayoutRun get_run ();
		public void get_run_extents (out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public unowned Pango.LayoutRun get_run_readonly ();
		public bool next_char ();
		public bool next_cluster ();
		public bool next_line ();
		public bool next_run ();
	}
	[Compact]
	[CCode (ref_function = "pango_layout_line_ref", unref_function = "pango_layout_line_unref", type_id = "PANGO_TYPE_LAYOUT_LINE", cheader_filename = "pango/pango.h")]
	public class LayoutLine {
		public uint is_paragraph_start;
		public weak Pango.Layout layout;
		public int length;
		public uint resolved_dir;
		public weak GLib.SList runs;
		public int start_index;
		public void get_extents (out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public void get_pixel_extents (out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public void get_x_ranges (int start_index, int end_index, int[] ranges);
		public void index_to_x (int index_, bool trailing, int x_pos);
		public bool x_to_index (int x_pos, int index_, int trailing);
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class LayoutRun {
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public class Renderer : GLib.Object {
		public int active_count;
		public Pango.Matrix matrix;
		public bool strikethrough;
		public Pango.Underline underline;
		[CCode (has_construct_function = false)]
		protected Renderer ();
		public void activate ();
		[NoWrapper]
		public virtual void begin ();
		public void deactivate ();
		public virtual void draw_error_underline (int x, int y, int width, int height);
		public virtual void draw_glyph (Pango.Font font, Pango.Glyph glyph, double x, double y);
		public virtual void draw_glyph_item (string text, Pango.GlyphItem glyph_item, int x, int y);
		public virtual void draw_glyphs (Pango.Font font, Pango.GlyphString glyphs, int x, int y);
		public void draw_layout (Pango.Layout layout, int x, int y);
		public void draw_layout_line (Pango.LayoutLine line, int x, int y);
		public virtual void draw_rectangle (Pango.RenderPart part, int x, int y, int width, int height);
		[NoWrapper]
		public virtual void draw_shape (Pango.AttrShape attr, int x, int y);
		public virtual void draw_trapezoid (Pango.RenderPart part, double y1_, double x11, double x21, double y2, double x12, double x22);
		[NoWrapper]
		public virtual void end ();
		public Pango.Color get_color (Pango.RenderPart part);
		public unowned Pango.Layout get_layout ();
		public unowned Pango.LayoutLine get_layout_line ();
		public Pango.Matrix get_matrix ();
		public virtual void part_changed (Pango.RenderPart part);
		[NoWrapper]
		public virtual void prepare_run (Pango.LayoutRun run);
		public void set_color (Pango.RenderPart part, Pango.Color color);
		public void set_matrix (Pango.Matrix matrix);
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class ScriptIter {
		[CCode (has_construct_function = false)]
		public ScriptIter (string text, int length);
		public void get_range (out unowned string start, out unowned string end, Pango.Script script);
		public bool next ();
	}
	[Compact]
	[CCode (copy_function = "pango_tab_array_copy", type_id = "PANGO_TYPE_TAB_ARRAY", cheader_filename = "pango/pango.h")]
	public class TabArray {
		[CCode (has_construct_function = false)]
		public TabArray (int initial_size, bool positions_in_pixels);
		public Pango.TabArray copy ();
		public bool get_positions_in_pixels ();
		public int get_size ();
		public void get_tab (int tab_index, Pango.TabAlign alignment, int location);
		public void get_tabs (out Pango.TabAlign alignments, int locations);
		public void resize (int new_size);
		public void set_tab (int tab_index, Pango.TabAlign alignment, int location);
		[CCode (has_construct_function = false)]
		public TabArray.with_positions (int size, bool positions_in_pixels, Pango.TabAlign first_alignment, ...);
	}
	[CCode (type_id = "PANGO_TYPE_ANALYSIS", cheader_filename = "pango/pango.h")]
	public struct Analysis {
		public weak Pango.EngineShape shape_engine;
		public weak Pango.EngineLang lang_engine;
		public weak Pango.Font font;
		public uchar level;
		public uchar gravity;
		public uchar flags;
		public uchar script;
		public weak Pango.Language language;
		public weak GLib.SList extra_attrs;
	}
	[CCode (type_id = "PANGO_TYPE_COLOR", cheader_filename = "pango/pango.h")]
	public struct Color {
		public uint16 red;
		public uint16 green;
		public uint16 blue;
		public Pango.Color copy ();
		public void free ();
		public bool parse (string spec);
		public unowned string to_string ();
	}
	[CCode (cheader_filename = "pango/pango.h")]
	[SimpleType]
	[IntegerType (rank = 0)]
	public struct Glyph : uint32 {
	}
	[CCode (type_id = "PANGO_TYPE_GLYPH_GEOMETRY", cheader_filename = "pango/pango.h")]
	public struct GlyphGeometry {
		public weak Pango.GlyphUnit width;
		public weak Pango.GlyphUnit x_offset;
		public weak Pango.GlyphUnit y_offset;
	}
	[CCode (type_id = "PANGO_TYPE_GLYPH_INFO", cheader_filename = "pango/pango.h")]
	public struct GlyphInfo {
		public Pango.Glyph glyph;
		public Pango.GlyphGeometry geometry;
		public Pango.GlyphVisAttr attr;
	}
	[CCode (type_id = "PANGO_TYPE_GLYPH_ITEM_ITER", cheader_filename = "pango/pango.h")]
	public struct GlyphItemIter {
		public weak Pango.GlyphItem glyph_item;
		public weak string text;
		public int start_glyph;
		public int start_index;
		public int start_char;
		public int end_glyph;
		public int end_index;
		public int end_char;
		public Pango.GlyphItemIter copy ();
		public void free ();
		public bool init_end (Pango.GlyphItem glyph_item, string text);
		public bool init_start (Pango.GlyphItem glyph_item, string text);
		public bool next_cluster ();
		public bool prev_cluster ();
	}
	[CCode (type_id = "PANGO_TYPE_GLYPH_VIS_ATTR", cheader_filename = "pango/pango.h")]
	public struct GlyphVisAttr {
		public uint is_cluster_start;
	}
	[CCode (type_id = "PANGO_TYPE_LOG_ATTR", cheader_filename = "pango/pango.h")]
	public struct LogAttr {
		public uint is_line_break;
		public uint is_mandatory_break;
		public uint is_char_break;
		public uint is_white;
		public uint is_cursor_position;
		public uint is_word_start;
		public uint is_word_end;
		public uint is_sentence_boundary;
		public uint is_sentence_start;
		public uint is_sentence_end;
		public uint backspace_deletes_character;
		public uint is_expandable_space;
		public uint is_word_boundary;
	}
	[CCode (type_id = "PANGO_TYPE_MATRIX", cheader_filename = "pango/pango.h")]
	public struct Matrix {
		public double xx;
		public double xy;
		public double yx;
		public double yy;
		public double x0;
		public double y0;
		public void concat (Pango.Matrix new_matrix);
		public Pango.Matrix copy ();
		public void free ();
		public double get_font_scale_factor ();
		public void rotate (double degrees);
		public void scale (double scale_x, double scale_y);
		public void transform_distance (double dx, double dy);
		public void transform_pixel_rectangle (ref Pango.Rectangle rect);
		public void transform_point (double x, double y);
		public void transform_rectangle (ref Pango.Rectangle rect);
		public void translate (double tx, double ty);
	}
	[CCode (type_id = "PANGO_TYPE_RECTANGLE", cheader_filename = "pango/pango.h")]
	public struct Rectangle {
		public int x;
		public int y;
		public int width;
		public int height;
	}
	[CCode (cprefix = "PANGO_ALIGN_", cheader_filename = "pango/pango.h")]
	public enum Alignment {
		LEFT,
		CENTER,
		RIGHT
	}
	[CCode (cprefix = "PANGO_ATTR_", cheader_filename = "pango/pango.h")]
	public enum AttrType {
		INVALID,
		LANGUAGE,
		FAMILY,
		STYLE,
		WEIGHT,
		VARIANT,
		STRETCH,
		SIZE,
		FONT_DESC,
		FOREGROUND,
		BACKGROUND,
		UNDERLINE,
		STRIKETHROUGH,
		RISE,
		SHAPE,
		SCALE,
		FALLBACK,
		LETTER_SPACING,
		UNDERLINE_COLOR,
		STRIKETHROUGH_COLOR,
		ABSOLUTE_SIZE,
		GRAVITY,
		GRAVITY_HINT
	}
	[CCode (cprefix = "PANGO_BIDI_TYPE_", cheader_filename = "pango/pango.h")]
	public enum BidiType {
		L,
		LRE,
		LRO,
		R,
		AL,
		RLE,
		RLO,
		PDF,
		EN,
		ES,
		ET,
		AN,
		CS,
		NSM,
		BN,
		B,
		S,
		WS,
		ON
	}
	[CCode (cprefix = "PANGO_COVERAGE_", cheader_filename = "pango/pango.h")]
	public enum CoverageLevel {
		NONE,
		FALLBACK,
		APPROXIMATE,
		EXACT
	}
	[CCode (cprefix = "PANGO_DIRECTION_", cheader_filename = "pango/pango.h")]
	public enum Direction {
		LTR,
		RTL,
		TTB_LTR,
		TTB_RTL,
		WEAK_LTR,
		WEAK_RTL,
		NEUTRAL
	}
	[CCode (cprefix = "PANGO_ELLIPSIZE_", cheader_filename = "pango/pango.h")]
	public enum EllipsizeMode {
		NONE,
		START,
		MIDDLE,
		END
	}
	[CCode (cprefix = "PANGO_FONT_MASK_", cheader_filename = "pango/pango.h")]
	[Flags]
	public enum FontMask {
		FAMILY,
		STYLE,
		VARIANT,
		WEIGHT,
		STRETCH,
		SIZE,
		GRAVITY
	}
	[CCode (cprefix = "PANGO_GRAVITY_", cheader_filename = "pango/pango.h")]
	public enum Gravity {
		SOUTH,
		EAST,
		NORTH,
		WEST,
		AUTO
	}
	[CCode (cprefix = "PANGO_GRAVITY_HINT_", cheader_filename = "pango/pango.h")]
	public enum GravityHint {
		NATURAL,
		STRONG,
		LINE
	}
	[CCode (cprefix = "PANGO_RENDER_PART_", cheader_filename = "pango/pango.h")]
	public enum RenderPart {
		FOREGROUND,
		BACKGROUND,
		UNDERLINE,
		STRIKETHROUGH
	}
	[CCode (cprefix = "PANGO_SCRIPT_", cheader_filename = "pango/pango.h")]
	public enum Script {
		INVALID_CODE,
		COMMON,
		INHERITED,
		ARABIC,
		ARMENIAN,
		BENGALI,
		BOPOMOFO,
		CHEROKEE,
		COPTIC,
		CYRILLIC,
		DESERET,
		DEVANAGARI,
		ETHIOPIC,
		GEORGIAN,
		GOTHIC,
		GREEK,
		GUJARATI,
		GURMUKHI,
		HAN,
		HANGUL,
		HEBREW,
		HIRAGANA,
		KANNADA,
		KATAKANA,
		KHMER,
		LAO,
		LATIN,
		MALAYALAM,
		MONGOLIAN,
		MYANMAR,
		OGHAM,
		OLD_ITALIC,
		ORIYA,
		RUNIC,
		SINHALA,
		SYRIAC,
		TAMIL,
		TELUGU,
		THAANA,
		THAI,
		TIBETAN,
		CANADIAN_ABORIGINAL,
		YI,
		TAGALOG,
		HANUNOO,
		BUHID,
		TAGBANWA,
		BRAILLE,
		CYPRIOT,
		LIMBU,
		OSMANYA,
		SHAVIAN,
		LINEAR_B,
		TAI_LE,
		UGARITIC,
		NEW_TAI_LUE,
		BUGINESE,
		GLAGOLITIC,
		TIFINAGH,
		SYLOTI_NAGRI,
		OLD_PERSIAN,
		KHAROSHTHI,
		UNKNOWN,
		BALINESE,
		CUNEIFORM,
		PHOENICIAN,
		PHAGS_PA,
		NKO,
		KAYAH_LI,
		LEPCHA,
		REJANG,
		SUNDANESE,
		SAURASHTRA,
		CHAM,
		OL_CHIKI,
		VAI,
		CARIAN,
		LYCIAN,
		LYDIAN
	}
	[CCode (cprefix = "PANGO_STRETCH_", cheader_filename = "pango/pango.h")]
	public enum Stretch {
		ULTRA_CONDENSED,
		EXTRA_CONDENSED,
		CONDENSED,
		SEMI_CONDENSED,
		NORMAL,
		SEMI_EXPANDED,
		EXPANDED,
		EXTRA_EXPANDED,
		ULTRA_EXPANDED
	}
	[CCode (cprefix = "PANGO_STYLE_", cheader_filename = "pango/pango.h")]
	public enum Style {
		NORMAL,
		OBLIQUE,
		ITALIC
	}
	[CCode (cprefix = "PANGO_TAB_", cheader_filename = "pango/pango.h")]
	public enum TabAlign {
		LEFT
	}
	[CCode (cprefix = "PANGO_UNDERLINE_", cheader_filename = "pango/pango.h")]
	public enum Underline {
		NONE,
		SINGLE,
		DOUBLE,
		LOW,
		ERROR
	}
	[CCode (cprefix = "PANGO_VARIANT_", cheader_filename = "pango/pango.h")]
	public enum Variant {
		NORMAL,
		SMALL_CAPS
	}
	[CCode (cprefix = "PANGO_WEIGHT_", cheader_filename = "pango/pango.h")]
	public enum Weight {
		THIN,
		ULTRALIGHT,
		LIGHT,
		BOOK,
		NORMAL,
		MEDIUM,
		SEMIBOLD,
		BOLD,
		ULTRABOLD,
		HEAVY,
		ULTRAHEAVY
	}
	[CCode (cprefix = "PANGO_WRAP_", cheader_filename = "pango/pango.h")]
	public enum WrapMode {
		WORD,
		CHAR,
		WORD_CHAR
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public delegate void* AttrDataCopyFunc ();
	[CCode (cheader_filename = "pango/pango.h")]
	public delegate bool AttrFilterFunc (Pango.Attribute attribute);
	[CCode (cheader_filename = "pango/pango.h")]
	public delegate bool FontsetForeachFunc (Pango.Fontset fontset, Pango.Font font);
	[CCode (cheader_filename = "pango/pango.h")]
	public const int ANALYSIS_FLAG_CENTERED_BASELINE;
	[CCode (cheader_filename = "pango/pango.h")]
	public const int ATTR_INDEX_FROM_TEXT_BEGINNING;
	[CCode (cheader_filename = "pango/pango.h")]
	public const string ENGINE_TYPE_LANG;
	[CCode (cheader_filename = "pango/pango.h")]
	public const string ENGINE_TYPE_SHAPE;
	[CCode (cheader_filename = "pango/pango.h")]
	public const string RENDER_TYPE_NONE;
	[CCode (cheader_filename = "pango/pango.h")]
	public const int SCALE;
	[CCode (cheader_filename = "pango/pango.h")]
	public const int UNKNOWN_GLYPH_HEIGHT;
	[CCode (cheader_filename = "pango/pango.h")]
	public const int UNKNOWN_GLYPH_WIDTH;
	[CCode (cheader_filename = "pango/pango.h")]
	public const int VERSION_MAJOR;
	[CCode (cheader_filename = "pango/pango.h")]
	public const int VERSION_MICRO;
	[CCode (cheader_filename = "pango/pango.h")]
	public const int VERSION_MINOR;
	[CCode (cheader_filename = "pango/pango.h")]
	public const string VERSION_STRING;
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.Attribute attr_background_new (uint16 red, uint16 green, uint16 blue);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.Attribute attr_fallback_new (bool enable_fallback);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.Attribute attr_family_new (string family);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.Attribute attr_foreground_new (uint16 red, uint16 green, uint16 blue);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.Attribute attr_gravity_hint_new (Pango.GravityHint hint);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.Attribute attr_gravity_new (Pango.Gravity gravity);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.Attribute attr_letter_spacing_new (int letter_spacing);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.Attribute attr_rise_new (int rise);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.Attribute attr_scale_new (double scale_factor);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.Attribute attr_stretch_new (Pango.Stretch stretch);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.Attribute attr_strikethrough_color_new (uint16 red, uint16 green, uint16 blue);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.Attribute attr_strikethrough_new (bool strikethrough);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.Attribute attr_style_new (Pango.Style style);
	[CCode (cheader_filename = "pango/pango.h")]
	public static unowned string attr_type_get_name (Pango.AttrType type);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.AttrType attr_type_register (string name);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.Attribute attr_underline_color_new (uint16 red, uint16 green, uint16 blue);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.Attribute attr_underline_new (Pango.Underline underline);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.Attribute attr_variant_new (Pango.Variant variant);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.Attribute attr_weight_new (Pango.Weight weight);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.BidiType bidi_type_for_unichar (unichar ch);
	[CCode (cheader_filename = "pango/pango.h")]
	public static void @break (string text, int length, Pango.Analysis analysis, Pango.LogAttr[] attrs, int attrs_len);
	[CCode (cheader_filename = "pango/pango.h")]
	public static void extents_to_pixels (ref Pango.Rectangle inclusive, ref Pango.Rectangle nearest);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.Direction find_base_dir (string text, int length);
	[CCode (cheader_filename = "pango/pango.h")]
	public static void find_paragraph_boundary (string text, int length, out int paragraph_delimiter_index, out int next_paragraph_start);
	[CCode (cheader_filename = "pango/pango.h")]
	public static void get_log_attrs (string text, int length, int level, Pango.Language language, Pango.LogAttr[] log_attrs);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.Gravity gravity_get_for_matrix (Pango.Matrix matrix);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.Gravity gravity_get_for_script (Pango.Script script, Pango.Gravity base_gravity, Pango.GravityHint hint);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.Gravity gravity_get_for_script_and_width (Pango.Script script, bool wide, Pango.Gravity base_gravity, Pango.GravityHint hint);
	[CCode (cheader_filename = "pango/pango.h")]
	public static double gravity_to_rotation (Pango.Gravity gravity);
	[CCode (cheader_filename = "pango/pango.h")]
	public static bool is_zero_width (unichar ch);
	[CCode (cheader_filename = "pango/pango.h")]
	public static unowned GLib.List itemize (Pango.Context context, string text, int start_index, int length, Pango.AttrList attrs, Pango.AttrIterator cached_iter);
	[CCode (cheader_filename = "pango/pango.h")]
	public static unowned GLib.List itemize_with_base_dir (Pango.Context context, Pango.Direction base_dir, string text, int start_index, int length, Pango.AttrList attrs, Pango.AttrIterator cached_iter);
	[CCode (cheader_filename = "pango/pango.h")]
	public static uchar log2vis_get_embedding_levels (string text, int length, Pango.Direction pbase_dir);
	[CCode (cheader_filename = "pango/pango.h")]
	public static bool parse_enum (GLib.Type type, string str, int value, bool warn, out unowned string possible_values);
	[CCode (cheader_filename = "pango/pango.h")]
	public static bool parse_markup (string markup_text, int length, unichar accel_marker, out unowned Pango.AttrList attr_list, out unowned string text, unichar accel_char) throws GLib.Error;
	[CCode (cheader_filename = "pango/pango.h")]
	public static bool parse_stretch (string str, Pango.Stretch stretch, bool warn);
	[CCode (cheader_filename = "pango/pango.h")]
	public static bool parse_style (string str, Pango.Style style, bool warn);
	[CCode (cheader_filename = "pango/pango.h")]
	public static bool parse_variant (string str, Pango.Variant variant, bool warn);
	[CCode (cheader_filename = "pango/pango.h")]
	public static bool parse_weight (string str, Pango.Weight weight, bool warn);
	[CCode (cheader_filename = "pango/pango.h")]
	public static void quantize_line_geometry (int thickness, int position);
	[CCode (cheader_filename = "pango/pango.h")]
	public static int read_line (GLib.FileStream stream, GLib.StringBuilder str);
	[CCode (cheader_filename = "pango/pango.h")]
	public static unowned GLib.List reorder_items (GLib.List logical_items);
	[CCode (cheader_filename = "pango/pango.h")]
	public static bool scan_int (out unowned string pos, int @out);
	[CCode (cheader_filename = "pango/pango.h")]
	public static bool scan_string (out unowned string pos, GLib.StringBuilder @out);
	[CCode (cheader_filename = "pango/pango.h")]
	public static bool scan_word (out unowned string pos, GLib.StringBuilder @out);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.Script script_for_unichar (unichar ch);
	[CCode (cheader_filename = "pango/pango.h")]
	public static unowned Pango.Language script_get_sample_language (Pango.Script script);
	[CCode (cheader_filename = "pango/pango.h")]
	public static void shape (string text, int length, Pango.Analysis analysis, Pango.GlyphString glyphs);
	[CCode (cheader_filename = "pango/pango.h")]
	public static bool skip_space (out unowned string pos);
	[CCode (cheader_filename = "pango/pango.h")]
	public static unowned string split_file_list (string str);
	[CCode (cheader_filename = "pango/pango.h")]
	public static unowned string trim_string (string str);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.Direction unichar_direction (unichar ch);
	[CCode (cheader_filename = "pango/pango.h")]
	public static int units_from_double (double d);
	[CCode (cheader_filename = "pango/pango.h")]
	public static double units_to_double (int i);
	[CCode (cheader_filename = "pango/pango.h")]
	public static int version ();
	[CCode (cheader_filename = "pango/pango.h")]
	public static unowned string version_check (int required_major, int required_minor, int required_micro);
	[CCode (cheader_filename = "pango/pango.h")]
	public static unowned string version_string ();
}
