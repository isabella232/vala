/* gstreamer-video-0.10.vapi generated by lt-vapigen, do not modify. */

[CCode (cprefix = "Gst", lower_case_cprefix = "gst_")]
namespace Gst {
	[CCode (cprefix = "GST_VIDEO_FORMAT_", has_type_id = "0", cheader_filename = "gst/video/video.h")]
	public enum VideoFormat {
		UNKNOWN,
		I420,
		YV12,
		YUY2,
		UYVY,
		AYUV,
		RGBx,
		BGRx,
		xRGB,
		xBGR,
		RGBA,
		BGRA,
		ARGB,
		ABGR,
		RGB,
		BGR
	}
	[CCode (cheader_filename = "gst/video/gstvideosink.h")]
	public class VideoRectangle {
		public int x;
		public int y;
		public int w;
		public int h;
	}
	[CCode (cheader_filename = "gst/video/gstvideofilter.h")]
	public class VideoFilter : Gst.BaseTransform {
		public bool inited;
	}
	[CCode (cheader_filename = "gst/video/gstvideosink.h")]
	public class VideoSink : Gst.BaseSink {
		public int width;
		public int height;
		public static void center_rect (Gst.VideoRectangle src, Gst.VideoRectangle dst, Gst.VideoRectangle _result, bool scaling);
	}
	public const string VIDEO_BLUE_MASK_15;
	public const int VIDEO_BLUE_MASK_15_INT;
	public const string VIDEO_BLUE_MASK_16;
	public const int VIDEO_BLUE_MASK_16_INT;
	public const string VIDEO_BYTE1_MASK_24;
	public const int VIDEO_BYTE1_MASK_24_INT;
	public const string VIDEO_BYTE1_MASK_32;
	public const int VIDEO_BYTE1_MASK_32_INT;
	public const string VIDEO_BYTE2_MASK_24;
	public const int VIDEO_BYTE2_MASK_24_INT;
	public const string VIDEO_BYTE2_MASK_32;
	public const int VIDEO_BYTE2_MASK_32_INT;
	public const string VIDEO_BYTE3_MASK_24;
	public const int VIDEO_BYTE3_MASK_24_INT;
	public const string VIDEO_BYTE3_MASK_32;
	public const int VIDEO_BYTE3_MASK_32_INT;
	public const string VIDEO_BYTE4_MASK_32;
	public const int VIDEO_BYTE4_MASK_32_INT;
	public const string VIDEO_CAPS_RGB_15;
	public const string VIDEO_CAPS_RGB_16;
	public const string VIDEO_FPS_RANGE;
	public const string VIDEO_GREEN_MASK_15;
	public const int VIDEO_GREEN_MASK_15_INT;
	public const string VIDEO_GREEN_MASK_16;
	public const int VIDEO_GREEN_MASK_16_INT;
	public const string VIDEO_RED_MASK_15;
	public const int VIDEO_RED_MASK_15_INT;
	public const string VIDEO_RED_MASK_16;
	public const int VIDEO_RED_MASK_16_INT;
	public const string VIDEO_SIZE_RANGE;
	[CCode (cheader_filename = "gst/video/video.h")]
	public static bool video_calculate_display_ratio (uint dar_n, uint dar_d, uint video_width, uint video_height, uint video_par_n, uint video_par_d, uint display_par_n, uint display_par_d);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static bool video_format_convert (Gst.VideoFormat format, int width, int height, int fps_n, int fps_d, Gst.Format src_format, int64 src_value, Gst.Format dest_format, int64 dest_value);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static Gst.VideoFormat video_format_from_fourcc (uint fourcc);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static int video_format_get_component_height (Gst.VideoFormat format, int component, int height);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static int video_format_get_component_offset (Gst.VideoFormat format, int component, int width, int height);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static int video_format_get_component_width (Gst.VideoFormat format, int component, int width);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static int video_format_get_pixel_stride (Gst.VideoFormat format, int component);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static int video_format_get_row_stride (Gst.VideoFormat format, int component, int width);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static int video_format_get_size (Gst.VideoFormat format, int width, int height);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static bool video_format_has_alpha (Gst.VideoFormat format);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static bool video_format_is_rgb (Gst.VideoFormat format);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static bool video_format_is_yuv (Gst.VideoFormat format);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static weak Gst.Caps video_format_new_caps (Gst.VideoFormat format, int width, int height, int framerate_n, int framerate_d, int par_n, int par_d);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static bool video_format_parse_caps (Gst.Caps caps, Gst.VideoFormat format, int width, int height);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static uint video_format_to_fourcc (Gst.VideoFormat format);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static GLib.Value video_frame_rate (Gst.Pad pad);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static bool video_get_size (Gst.Pad pad, int width, int height);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static bool video_parse_caps_framerate (Gst.Caps caps, int fps_n, int fps_d);
	[CCode (cheader_filename = "gst/video/video.h")]
	public static bool video_parse_caps_pixel_aspect_ratio (Gst.Caps caps, int par_n, int par_d);
}
