extends Node2D
# BUG
#onready var counter : float = Autoload.get_rand_time()
#
#var temp_array : PackedStringArray = PackedStringArray([
#	"rrara",
#	"application/config/name",
#	"application/config/description",
#	"application/run/main_scene",
#	"application/run/disable_stdout",
#	"application/run/disable_stderr",
#	"application/config/use_custom_user_dir",
#	"application/config/custom_user_dir_name",
#	"application/config/project_settings_override",
#	"audio/default_bus_layout",
#	"editor/search_in_file_extensions",
#	"editor/script_templates_search_path",
#	"input/ui_accept",
#	"input/ui_select",
#	"input/ui_cancel",
#	"input/ui_focus_next",
#	"input/ui_focus_prev",
#	"input/ui_left",
#	"input/ui_right",
#	"input/ui_up",
#	"input/ui_down",
#	"input/ui_page_up",
#	"input/ui_page_down",
#	"input/ui_home",
#	"input/ui_endintdebug/settings/profiler/max_functions",
#	"compression/formats/zstd/long_distance_matching",
#	"compression/formats/zstd/compression_level",
#	"compression/formats/zstd/window_log_size",
#	"compression/formats/zlib/compression_level",
#	"compression/formats/gzip/compression_level",
#	"android/modules",
#	"network/limits/tcp/connect_timeout_seconds",
#	"network/limits/packet_peer_stream/max_buffer_po2",
#	"network/ssl/certificates",
#	"debug/settings/crash_handler/message",
#	"network/remote_fs/page_size",
#	"network/remote_fs/page_read_ahead",
#	"memory/limits/multithreaded_server/rid_pool_prealloc",
#	"network/limits/debugger_stdout/max_chars_per_second",
#	"network/limits/debugger_stdout/max_messages_per_frame",
#	"network/limits/debugger_stdout/max_errors_per_second",
#	"network/limits/debugger_stdout/max_warnings_per_second",
#	"logging/file_logging/enable_file_logging",
#	"logging/file_logging/log_path",
#	"logging/file_logging/max_log_files",
#	"rendering/quality/driver/driver_name",
#	"rendering/quality/driver/fallback_to_gles2",
#	"rendering/quality/2d/gles2_use_nvidia_rect_flicker_workaround",
#	"display/window/size/width",
#	"display/window/size/height",
#	"display/window/size/resizable",
#	"display/window/size/borderless",
#	"display/window/size/fullscreen",
#	"display/window/size/always_on_top",
#	"display/window/size/test_width",
#	"display/window/size/test_height",
#	"display/window/dpi/allow_hidpi",
#	"display/window/vsync/use_vsync",
#	"display/window/vsync/vsync_via_compositor",
#	"display/window/per_pixel_transparency/allowed",
#	"display/window/per_pixel_transparency/enabled",
#	"rendering/quality/intended_usage/framebuffer_allocation",
#	"rendering/quality/intended_usage/framebuffer_allocation.mobile",
#	"rendering/quality/2d/use_pixel_snap",
#	"display/window/energy_saving/keep_screen_on",
#	"rendering/threads/thread_model",
#	"audio/driver",
#	"display/window/handheld/orientation",
#	"physics/common/physics_fps",
#	"physics/common/physics_jitter_fix",
#	"debug/settings/fps/force_fps",
#	"debug/settings/stdout/print_fps",
#	"debug/settings/stdout/verbose_stdout",
#	"application/run/frame_delay_msec",
#	"application/run/low_processor_mode",
#	"application/run/low_processor_mode_sleep_usec",
#	"display/window/ios/hide_home_indicator",
#	"memory/limits/message_queue/max_size_kb",
#	"rendering/quality/filters/anisotropic_filter_level",
#	"rendering/limits/time/time_rollover_secs",
#	"rendering/vram_compression/import_bptc",
#	"rendering/vram_compression/import_s3tc",
#	"rendering/vram_compression/import_etc",
#	"rendering/vram_compression/import_etc2",
#	"rendering/vram_compression/import_pvrtc",
#	"rendering/quality/directional_shadow/size",
#	"rendering/quality/directional_shadow/size.mobile",
#	"rendering/quality/shadow_atlas/size",
#	"rendering/quality/shadow_atlas/size.mobile",
#	"rendering/quality/shadow_atlas/quadrant_0_subdiv",
#	"rendering/quality/shadow_atlas/quadrant_1_subdiv",
#	"rendering/quality/shadow_atlas/quadrant_2_subdiv",
#	"rendering/quality/shadow_atlas/quadrant_3_subdiv",
#	"rendering/quality/shadows/filter_mode",
#	"rendering/quality/shadows/filter_mode.mobile",
#	"rendering/quality/reflections/texture_array_reflections",
#	"rendering/quality/reflections/texture_array_reflections.mobile",
#	"rendering/quality/reflections/high_quality_ggx",
#	"rendering/quality/reflections/high_quality_ggx.mobile",
#	"rendering/quality/reflections/irradiance_max_size",
#	"rendering/quality/shading/force_vertex_shading",
#	"rendering/quality/shading/force_vertex_shading.mobile",
#	"rendering/quality/shading/force_lambert_over_burley",
#	"rendering/quality/shading/force_lambert_over_burley.mobile",
#	"rendering/quality/shading/force_blinn_over_ggx",
#	"rendering/quality/shading/force_blinn_over_ggx.mobile",
#	"rendering/quality/depth_prepass/enable",
#	"rendering/quality/depth_prepass/disable_for_vendors",
#	"rendering/quality/filters/use_nearest_mipmap_filter",
#	"rendering/limits/buffers/blend_shape_max_buffer_size_kb",
#	"rendering/limits/buffers/canvas_polygon_buffer_size_kb",
#	"rendering/limits/buffers/canvas_polygon_index_buffer_size_kb",
#	"rendering/limits/rendering/max_renderable_elements",
#	"rendering/limits/rendering/max_renderable_lights",
#	"rendering/limits/rendering/max_renderable_reflections",
#	"rendering/limits/buffers/immediate_buffer_size_kb",
#	"rendering/quality/subsurface_scattering/quality",
#	"rendering/quality/subsurface_scattering/scale",
#	"rendering/quality/subsurface_scattering/follow_surface",
#	"rendering/quality/subsurface_scattering/weight_samples",
#	"rendering/quality/voxel_cone_tracing/high_quality",
#	"audio/enable_audio_input",
#	"audio/mix_rate",
#	"audio/output_latency",
#	"audio/channel_disable_threshold_db",
#	"audio/channel_disable_time",
#	"audio/video_delay_compensation_ms",
#	"physics/2d/physics_engine",
#	"physics/3d/physics_engine",
#	"rendering/environment/default_clear_color",
#	"application/boot_splash/image",
#	"application/boot_splash/fullsize",
#	"application/boot_splash/use_filter",
#	"application/boot_splash/bg_color",
#	"application/config/icon",
#	"application/config/macos_native_icon",
#	"application/config/windows_native_icon",
#	"input_devices/pointing/emulate_touch_from_mouse",
#	"input_devices/pointing/emulate_mouse_from_touch",
#	"node/name_num_separator",
#	"node/name_casing",
#	"gui/common/default_scroll_deadzone",
#	"gui/timers/incremental_search_max_interval_msec",
#	"gui/timers/text_edit_idle_detect_sec",
#	"gui/common/swap_ok_cancel",
#	"layer_names/2d_render/layer_1",
#	"layer_names/2d_physics/layer_1",
#	"layer_names/3d_render/layer_1",
#	"layer_names/3d_physics/layer_1",
#	"layer_names/2d_render/layer_2",
#	"layer_names/2d_physics/layer_2",
#	"layer_names/3d_render/layer_2",
#	"layer_names/3d_physics/layer_2",
#	"layer_names/2d_render/layer_3",
#	"layer_names/2d_physics/layer_3",
#	"layer_names/3d_render/layer_3",
#	"layer_names/3d_physics/layer_3",
#	"layer_names/2d_render/layer_4",
#	"layer_names/2d_physics/layer_4",
#	"layer_names/3d_render/layer_4",
#	"layer_names/3d_physics/layer_4",
#	"layer_names/2d_render/layer_5",
#	"layer_names/2d_physics/layer_5",
#	"layer_names/3d_render/layer_5",
#	"layer_names/3d_physics/layer_5",
#	"layer_names/2d_render/layer_6",
#	"layer_names/2d_physics/layer_6",
#	"layer_names/3d_render/layer_6",
#	"layer_names/3d_physics/layer_6",
#	"layer_names/2d_render/layer_7",
#	"layer_names/2d_physics/layer_7",
#	"layer_names/3d_render/layer_7",
#	"layer_names/3d_physics/layer_7",
#	"layer_names/2d_render/layer_8",
#	"layer_names/2d_physics/layer_8",
#	"layer_names/3d_render/layer_8",
#	"layer_names/3d_physics/layer_8",
#	"layer_names/2d_render/layer_9",
#	"layer_names/2d_physics/layer_9",
#	"layer_names/3d_render/layer_9",
#	"layer_names/3d_physics/layer_9",
#	"layer_names/2d_render/layer_10",
#	"layer_names/2d_physics/layer_10",
#	"layer_names/3d_render/layer_10",
#	"layer_names/3d_physics/layer_10",
#	"layer_names/2d_render/layer_11",
#	"layer_names/2d_physics/layer_11",
#	"layer_names/3d_render/layer_11",
#	"layer_names/3d_physics/layer_11",
#	"layer_names/2d_render/layer_12",
#	"layer_names/2d_physics/layer_12",
#	"layer_names/3d_render/layer_12",
#	"layer_names/3d_physics/layer_12",
#	"layer_names/2d_render/layer_13",
#	"layer_names/2d_physics/layer_13",
#	"layer_names/3d_render/layer_13",
#	"layer_names/3d_physics/layer_13",
#	"layer_names/2d_render/layer_14",
#	"layer_names/2d_physics/layer_14",
#	"layer_names/3d_render/layer_14",
#	"layer_names/3d_physics/layer_14",
#	"layer_names/2d_render/layer_15",
#	"layer_names/2d_physics/layer_15",
#	"layer_names/3d_render/layer_15",
#	"layer_names/3d_physics/layer_15",
#	"layer_names/2d_render/layer_16",
#	"layer_names/2d_physics/layer_16",
#	"layer_names/3d_render/layer_16",
#	"layer_names/3d_physics/layer_16",
#	"layer_names/2d_render/layer_17",
#	"layer_names/2d_physics/layer_17",
#	"layer_names/3d_render/layer_17",
#	"layer_names/3d_physics/layer_17",
#	"layer_names/2d_render/layer_18",
#	"layer_names/2d_physics/layer_18",
#	"layer_names/3d_render/layer_18",
#	"layer_names/3d_physics/layer_18",
#	"layer_names/2d_render/layer_19",
#	"layer_names/2d_physics/layer_19",
#	"layer_names/3d_render/layer_19",
#	"layer_names/3d_physics/layer_19",
#	"layer_names/2d_render/layer_20",
#	"layer_names/2d_physics/layer_20",
#	"layer_names/3d_render/layer_20",
#	"layer_names/3d_physics/layer_20",
#	"gui/theme/use_hidpi",
#	"gui/theme/custom",
#	"gui/theme/custom_font",
#	"display/mouse_cursor/custom_image",
#	"display/mouse_cursor/custom_image_hotspot",
#	"display/mouse_cursor/tooltip_position_offset",
#	"physics/3d/active_soft_world",
#	"debug/settings/gdscript/max_call_stack",
#	"debug/gdscript/warnings/enable",
#	"debug/gdscript/warnings/treat_warnings_as_errors",
#	"debug/gdscript/warnings/exclude_addons",
#	"debug/gdscript/completion/autocomplete_setters_and_getters",
#	"debug/gdscript/warnings/unassigned_variable",
#	"debug/gdscript/warnings/unassigned_variable_op_assign",
#	"debug/gdscript/warnings/unused_variable",
#	"debug/gdscript/warnings/shadowed_variable",
#	"debug/gdscript/warnings/unused_class_variable",
#	"debug/gdscript/warnings/unused_argument",
#	"debug/gdscript/warnings/unreachable_code",
#	"debug/gdscript/warnings/standalone_expression",
#	"debug/gdscript/warnings/void_assignment",
#	"debug/gdscript/warnings/narrowing_conversion",
#	"debug/gdscript/warnings/function_may_yield",
#	"debug/gdscript/warnings/variable_conflicts_function",
#	"debug/gdscript/warnings/function_conflicts_variable",
#	"debug/gdscript/warnings/function_conflicts_constant",
#	"debug/gdscript/warnings/incompatible_ternary",
#	"debug/gdscript/warnings/unused_signal",
#	"debug/gdscript/warnings/return_value_discarded",
#	"debug/gdscript/warnings/property_used_as_function",
#	"debug/gdscript/warnings/constant_used_as_function",
#	"debug/gdscript/warnings/function_used_as_property",
#	"debug/gdscript/warnings/integer_division",
#	"debug/gdscript/warnings/unsafe_property_access",
#	"debug/gdscript/warnings/unsafe_method_access",
#	"debug/gdscript/warnings/unsafe_cast",
#	"debug/gdscript/warnings/unsafe_call_argument",
#	"debug/gdscript/warnings/deprecated_keyword",
#	"debug/gdscript/warnings/standalone_ternary",
#	"debug/settings/visual_script/max_call_stack",
#	"network/limits/webrtc/max_channel_in_buffer_kb",
#	"network/limits/websocket_client/max_in_buffer_kb",
#	"network/limits/websocket_client/max_in_packets",
#	"network/limits/websocket_client/max_out_buffer_kb",
#	"network/limits/websocket_client/max_out_packets",
#	"network/limits/websocket_server/max_in_buffer_kb",
#	"network/limits/websocket_server/max_in_packets",
#	"network/limits/websocket_server/max_out_buffer_kb",
#	"network/limits/websocket_server/max_out_packets",
#	"physics/2d/thread_model",
#	"locale/test",
#	"locale/fallback",
#	"debug/shapes/collision/shape_color",
#	"debug/shapes/collision/contact_color",
#	"debug/shapes/navigation/geometry_color",
#	"debug/shapes/navigation/disabled_geometry_color",
#	"debug/shapes/collision/max_contacts_displayed",
#	"physics/2d/sleep_threshold_linear",
#	"physics/2d/sleep_threshold_angular",
#	"physics/2d/time_before_sleep",
#	"physics/2d/bp_hash_table_size",
#	"physics/2d/cell_size",
#	"physics/2d/large_object_surface_threshold_in_cells",
#	"physics/2d/default_gravity",
#	"physics/2d/default_gravity_vector",
#	"physics/2d/default_linear_damp",
#	"physics/2d/default_angular_damp",
#	"gui/timers/tooltip_delay_sec",
#	"physics/3d/default_gravity",
#	"physics/3d/default_gravity_vector",
#	"physics/3d/default_linear_damp",
#	"physics/3d/default_angular_damp",
#	"rendering/quality/reflections/atlas_size",
#	"rendering/quality/reflections/atlas_subdiv",
#	"rendering/quality/filters/msaa",
#	"rendering/quality/depth/hdr",
#	"rendering/quality/depth/hdr.mobile",
#	"rendering/environment/default_environment",
#	"physics/common/enable_object_picking",
#	"application/run/main_loop_type"
#	])
#
#func alt_process(delta) -> void:
#	counter -= delta
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("application/config/name", Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("application/config/description", Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("application/run/main_scene", Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("application/run/disable_stdout", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("application/run/disable_stderr", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("application/config/use_custom_user_dir", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("application/config/custom_user_dir_name", Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("application/config/project_settings_override", Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("audio/default_bus_layout", Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("editor/search_in_file_extensions", Autoload.get_packedstringarray())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("editor/script_templates_search_path", Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("input/ui_accept", Autoload.get_dictionary())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("input/ui_select", Autoload.get_dictionary())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("input/ui_cancel", Autoload.get_dictionary())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("input/ui_focus_next", Autoload.get_dictionary())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("input/ui_focus_prev", Autoload.get_dictionary())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("input/ui_left", Autoload.get_dictionary())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("input/ui_right", Autoload.get_dictionary())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("input/ui_up", Autoload.get_dictionary())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("input/ui_down", Autoload.get_dictionary())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("input/ui_page_up", Autoload.get_dictionary())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("input/ui_page_down", Autoload.get_dictionary())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("input/ui_home", Autoload.get_dictionary())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("input/ui_end", Autoload.get_dictionary())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/settings/profiler/max_functions", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("compression/formats/zstd/long_distance_matching", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("compression/formats/zstd/compression_level", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("compression/formats/zstd/window_log_size", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("compression/formats/zlib/compression_level", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("compression/formats/gzip/compression_level", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("android/modules", Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("network/limits/tcp/connect_timeout_seconds", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("network/limits/packet_peer_stream/max_buffer_po2", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("network/ssl/certificates", Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/settings/crash_handler/message", Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("network/remote_fs/page_size", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("network/remote_fs/page_read_ahead", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("memory/limits/multithreaded_server/rid_pool_prealloc", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("network/limits/debugger_stdout/max_chars_per_second", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("network/limits/debugger_stdout/max_messages_per_frame", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("network/limits/debugger_stdout/max_errors_per_second", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("network/limits/debugger_stdout/max_warnings_per_second", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("logging/file_logging/enable_file_logging", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("logging/file_logging/log_path", Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("logging/file_logging/max_log_files", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/driver/driver_name", Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/driver/fallback_to_gles2", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/2d/gles2_use_nvidia_rect_flicker_workaround", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("display/window/size/width", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("display/window/size/height", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("display/window/size/resizable", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("display/window/size/borderless", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("display/window/size/fullscreen", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("display/window/size/always_on_top", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("display/window/size/test_width", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("display/window/size/test_height", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("display/window/dpi/allow_hidpi", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("display/window/vsync/use_vsync", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("display/window/vsync/vsync_via_compositor", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("display/window/per_pixel_transparency/allowed", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("display/window/per_pixel_transparency/enabled", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/intended_usage/framebuffer_allocation", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/intended_usage/framebuffer_allocation.mobile", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/2d/use_pixel_snap", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("display/window/energy_saving/keep_screen_on", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/threads/thread_model", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("audio/driver", Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("display/window/handheld/orientation", Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("physics/common/physics_fps", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("physics/common/physics_jitter_fix", Autoload.get_float())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/settings/fps/force_fps", Autoload.get_inti(140) + 60)
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/settings/stdout/print_fps", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/settings/stdout/verbose_stdout", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("application/run/frame_delay_msec", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("application/run/low_processor_mode", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("application/run/low_processor_mode_sleep_usec", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("display/window/ios/hide_home_indicator", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("memory/limits/message_queue/max_size_kb", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/filters/anisotropic_filter_level", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/limits/time/time_rollover_secs", Autoload.get_float())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/vram_compression/import_bptc", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/vram_compression/import_s3tc", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/vram_compression/import_etc", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/vram_compression/import_etc2", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/vram_compression/import_pvrtc", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/directional_shadow/size", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/directional_shadow/size.mobile", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/shadow_atlas/size", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/shadow_atlas/size.mobile", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/shadow_atlas/quadrant_0_subdiv", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/shadow_atlas/quadrant_1_subdiv", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/shadow_atlas/quadrant_2_subdiv", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/shadow_atlas/quadrant_3_subdiv", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/shadows/filter_mode", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/shadows/filter_mode.mobile", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/reflections/texture_array_reflections", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/reflections/texture_array_reflections.mobile", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/reflections/high_quality_ggx", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/reflections/high_quality_ggx.mobile", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/reflections/irradiance_max_size", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/shading/force_vertex_shading", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/shading/force_vertex_shading.mobile", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/shading/force_lambert_over_burley", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/shading/force_lambert_over_burley.mobile", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/shading/force_blinn_over_ggx", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/shading/force_blinn_over_ggx.mobile", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/depth_prepass/enable", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/depth_prepass/disable_for_vendors", Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/filters/use_nearest_mipmap_filter", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/limits/buffers/blend_shape_max_buffer_size_kb", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/limits/buffers/canvas_polygon_buffer_size_kb", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/limits/buffers/canvas_polygon_index_buffer_size_kb", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/limits/rendering/max_renderable_elements", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/limits/rendering/max_renderable_lights", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/limits/rendering/max_renderable_reflections", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/limits/buffers/immediate_buffer_size_kb", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/subsurface_scattering/quality", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/subsurface_scattering/scale", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/subsurface_scattering/follow_surface", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/subsurface_scattering/weight_samples", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/voxel_cone_tracing/high_quality", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("audio/enable_audio_input", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("audio/mix_rate", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("audio/output_latency", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("audio/channel_disable_threshold_db", Autoload.get_float())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("audio/channel_disable_time", Autoload.get_float())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("audio/video_delay_compensation_ms", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("physics/2d/physics_engine", Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("physics/3d/physics_engine", Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/environment/default_clear_color", Autoload.get_color())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("application/boot_splash/image", Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("application/boot_splash/fullsize", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("application/boot_splash/use_filter", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("application/boot_splash/bg_color", Autoload.get_color())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("application/config/icon", Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("application/config/macos_native_icon", Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("application/config/windows_native_icon", Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("input_devices/pointing/emulate_touch_from_mouse", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("input_devices/pointing/emulate_mouse_from_touch", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("node/name_num_separator", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("node/name_casing", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("gui/common/default_scroll_deadzone", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("gui/timers/incremental_search_max_interval_msec", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("gui/timers/text_edit_idle_detect_sec", Autoload.get_float())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("gui/common/swap_ok_cancel", Autoload.get_bool())
#		if randi() % 2 == 1:
#			for i in range(20):
#				ProjectSettings.set_setting("layer_names/2d_render/layer_" + str(i), Autoload.get_string())
#				ProjectSettings.set_setting("layer_names/3d_render/layer_" + str(i), Autoload.get_string())
#				ProjectSettings.set_setting("layer_names/2d_physics/layer_" + str(i), Autoload.get_string())
#				ProjectSettings.set_setting("layer_names/3d_physics/layer_" + str(i), Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("gui/theme/use_hidpi", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("gui/theme/custom", Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("gui/theme/custom_font", Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("display/mouse_cursor/custom_image", Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("display/mouse_cursor/custom_image_hotspot", Autoload.get_vector2())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("display/mouse_cursor/tooltip_position_offset", Autoload.get_vector2())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("physics/3d/active_soft_world", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/settings/gdscript/max_call_stack", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/enable", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/treat_warnings_as_errors", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/exclude_addons", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/completion/autocomplete_setters_and_getters", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/unassigned_variable", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/unassigned_variable_op_assign", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/unused_variable", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/shadowed_variable", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/unused_class_variable", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/unused_argument", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/unreachable_code", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/standalone_expression", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/void_assignment", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/narrowing_conversion", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/function_may_yield", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/variable_conflicts_function", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/function_conflicts_variable", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/function_conflicts_constant", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/incompatible_ternary", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/unused_signal", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/return_value_discarded", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/property_used_as_function", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/constant_used_as_function", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/function_used_as_property", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/integer_division", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/unsafe_property_access", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/unsafe_method_access", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/unsafe_cast", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/unsafe_call_argument", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/deprecated_keyword", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/gdscript/warnings/standalone_ternary", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/settings/visual_script/max_call_stack", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("network/limits/webrtc/max_channel_in_buffer_kb", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("network/limits/websocket_client/max_in_buffer_kb", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("network/limits/websocket_client/max_in_packets", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("network/limits/websocket_client/max_out_buffer_kb", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("network/limits/websocket_client/max_out_packets", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("network/limits/websocket_server/max_in_buffer_kb", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("network/limits/websocket_server/max_in_packets", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("network/limits/websocket_server/max_out_buffer_kb", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("network/limits/websocket_server/max_out_packets", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("physics/2d/thread_model", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("locale/test", Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("locale/fallback", Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/shapes/collision/shape_color", Autoload.get_color())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/shapes/collision/contact_color", Autoload.get_color())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/shapes/navigation/geometry_color", Autoload.get_color())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/shapes/navigation/disabled_geometry_color", Autoload.get_color())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("debug/shapes/collision/max_contacts_displayed", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("physics/2d/sleep_threshold_linear", Autoload.get_float())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("physics/2d/sleep_threshold_angular", Autoload.get_float())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("physics/2d/time_before_sleep", Autoload.get_float())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("physics/2d/bp_hash_table_size", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("physics/2d/cell_size", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("physics/2d/large_object_surface_threshold_in_cells", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("physics/2d/default_gravity", Autoload.get_float())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("physics/2d/default_gravity_vector", Autoload.get_vector2())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("physics/2d/default_linear_damp", Autoload.get_float())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("physics/2d/default_angular_damp", Autoload.get_float())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("gui/timers/tooltip_delay_sec", Autoload.get_float())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("physics/3d/default_gravity", Autoload.get_float())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("physics/3d/default_gravity_vector", Autoload.get_vector3())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("physics/3d/default_linear_damp", Autoload.get_float())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("physics/3d/default_angular_damp", Autoload.get_float())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/reflections/atlas_size", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/reflections/atlas_subdiv", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/filters/msaa", Autoload.get_int())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/depth/hdr", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/quality/depth/hdr.mobile", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("rendering/environment/default_environment", Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("physics/common/enable_object_picking", Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.set_setting("application/run/main_loop_type", Autoload.get_string())
#
#		if randi() % 2 == 1:
#			ProjectSettings.add_property_info(Autoload.get_dictionary())
#		if randi() % 2 == 1:
#			ProjectSettings.clear(temp_array[randi() % temp_array.size()])
#
#		if randi() % 2 == 1:
#			ProjectSettings.get_order(temp_array[randi() % temp_array.size()])
#		if randi() % 2 == 1:
#			ProjectSettings.get_setting(temp_array[randi() % temp_array.size()])
#
#		if randi() % 2 == 1:
#			ProjectSettings.globalize_path(Autoload.get_string())
#		if randi() % 2 == 1:
#			ProjectSettings.has_setting(temp_array[randi() % temp_array.size()])
#		if randi() % 2 == 1:
#			ProjectSettings.load_resource_pack(Autoload.get_string(), Autoload.get_bool())
#		if randi() % 2 == 1:
#			ProjectSettings.localize_path(Autoload.get_string())
#
#		if randi() % 2 == 1:
#			ProjectSettings.property_can_revert(temp_array[randi() % temp_array.size()])
#		if randi() % 2 == 1:
#			ProjectSettings.property_get_revert(temp_array[randi() % temp_array.size()])
#
#		if randi() % 2 == 1:
#			ProjectSettings.save()
#		if randi() % 2 == 1:
#			ProjectSettings.save_custom("res://TEMP/" + Autoload.get_string())
#
#		if randi() % 2 == 1:
#			ProjectSettings.set_order(temp_array[randi() % temp_array.size()],Autoload.get_int())
