extends Node2D

onready var counter : float = Autoload.get_rand_time()

#
#
#
#func alt_process(delta) -> void:
#	counter -= delta
#
#
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#
#		var q_OS : OS = OS.new()
#
#		q_OS.set_clipboard(Autoload.get_string())
#		#q_OS.set_current_screen(Autoload.get_int())
#		#q_OS.set_exit_code(Autoload.get_int())
#		q_OS.set_use_vsync(Autoload.get_bool())
#		q_OS.set_low_processor_usage_mode(Autoload.get_bool())
#		q_OS.set_keep_screen_on(Autoload.get_bool())
#		q_OS.set_min_window_size(Autoload.get_vector2())
#		q_OS.set_max_window_size(Vector2(Autoload.get_float(),Autoload.get_float()))
#		q_OS.set_screen_orientation(Autoload.get_int()) #ScreenOrientation
#		q_OS.set_borderless_window(Autoload.get_bool())
#		q_OS.set_window_per_pixel_transparency_enabled(Autoload.get_bool())
#		#q_OS.set_window_fullscreen(Autoload.get_bool())
#		#q_OS.set_window_maximized(Autoload.get_bool())
#		#q_OS.set_window_minimized(Autoload.get_bool())
#		q_OS.set_window_resizable(Autoload.get_bool())
#		#q_OS.set_window_position(Autoload.get_vector2())
#		#q_OS.set_window_size(Autoload.get_vector2())
#
#		#q_OS.alert(Autoload.get_string(),Autoload.get_string())
#
#		q_OS.can_draw())
#		q_OS.can_use_threads())
#
#		q_OS.center_window()
#		q_OS.close_midi_inputs()
#
#		q_OS.delay_msec(Autoload.get_int())
#		q_OS.delay_usec(Autoload.get_int())
#
#		q_OS.dump_memory_to_file(Autoload.get_string())
#		q_OS.dump_resources_to_file(Autoload.get_string())
#
#		###q_OS.execute(Autoload.get_string(),[Autoload.get_string(),Autoload.get_string()],Autoload.get_bool(),Autoload.get_array(),Autoload.get_bool()))
#		q_OS.find_scancode_from_string(Autoload.get_string()))
#
#		q_OS.get_audio_driver_count())
#		#q_OS.get_audio_driver_name(Autoload.get_int()))
#		q_OS.get_cmdline_args())
#		q_OS.get_connected_midi_inputs())
#		q_OS.get_current_video_driver())
#		q_OS.get_date(Autoload.get_bool()))
#		q_OS.get_datetime(Autoload.get_bool()))
#		q_OS.get_datetime_from_unix_time(Autoload.get_int()))
#		q_OS.get_dynamic_memory_usage())
#		q_OS.get_environment(Autoload.get_string()))
#		q_OS.get_executable_path())
#		q_OS.get_ime_selection())
#		q_OS.get_ime_text())
#		q_OS.get_latin_keyboard_variant())
#		q_OS.get_locale())
#		q_OS.get_model_name())
#		q_OS.get_name())
#		q_OS.get_power_percent_left())
#		q_OS.get_power_seconds_left())
#		q_OS.get_power_state())
#		q_OS.get_process_id())
#		q_OS.get_processor_count())
#		q_OS.get_real_window_size())
#		q_OS.get_scancode_string(Autoload.get_int()))
#		q_OS.get_screen_count())
#		q_OS.get_screen_dpi(Autoload.get_int()))
#		q_OS.get_screen_position(Autoload.get_int()))
#		q_OS.get_screen_size(Autoload.get_int()))
#		q_OS.get_splash_tick_msec())
#		q_OS.get_static_memory_peak_usage())
#		q_OS.get_static_memory_usage())
#		q_OS.get_system_dir(Autoload.get_int())) # SystemDir
#		q_OS.get_system_time_msecs())
#		q_OS.get_system_time_secs())
#		q_OS.get_ticks_msec())
#		q_OS.get_ticks_usec())
#		q_OS.get_time(Autoload.get_bool()))
#		q_OS.get_time_zone_info())
#		q_OS.get_unique_id())
#		q_OS.get_unix_time())
#		q_OS.get_unix_time_from_datetime({Autoload.get_string():1992,Autoload.get_string():11,Autoload.get_string():11}))
#		q_OS.get_user_data_dir())
#		q_OS.get_video_driver_count())
#		q_OS.get_video_driver_name(Autoload.get_int())) # VideoDriver
#		q_OS.get_virtual_keyboard_height())
#		q_OS.get_window_safe_area())
#
#		q_OS.has_environment(Autoload.get_string()))
#		q_OS.has_feature(Autoload.get_string()))
#		q_OS.has_touchscreen_ui_hint())
#		q_OS.has_virtual_keyboard())
#
#		q_OS.hide_virtual_keyboard()
#
#		q_OS.is_debug_build())
#		q_OS.is_ok_left_and_cancel_right())
#		q_OS.is_scancode_unicode(Autoload.get_int()))
#		q_OS.is_stdout_verbose())
#		q_OS.is_userfs_persistent())
#		q_OS.is_window_always_on_top())
#
#		###q_OS.kill(
#		q_OS.move_window_to_foreground()
#
#		q_OS.native_video_is_playing())
#		q_OS.native_video_pause()
#		q_OS.native_video_play(Autoload.get_string(),Autoload.get_float(),Autoload.get_string(),Autoload.get_string()))
#		q_OS.native_video_stop()
#		q_OS.native_video_unpause()
#
#		q_OS.open_midi_inputs()
#
#		q_OS.print_all_resources(Autoload.get_string())
#		q_OS.print_all_textures_by_size()
#		q_OS.print_resources_by_type(Autoload.get_poolstringarray())
#		q_OS.print_resources_in_use(Autoload.get_bool())
#
#		q_OS.request_attention()
#		q_OS.request_permission(Autoload.get_string()))
#
#		q_OS.set_icon(temp_ImageTexture)
#		q_OS.set_ime_active(Autoload.get_bool())
#		q_OS.set_ime_position(Autoload.get_vector2())
#		q_OS.set_native_icon(Autoload.get_string())
#		q_OS.set_thread_name(Autoload.get_string()))
#		q_OS.set_use_file_access_save_and_swap(Autoload.get_bool())
#		q_OS.set_window_always_on_top(Autoload.get_bool())
#		q_OS.set_window_title(Autoload.get_string())
#
#		q_OS.shell_open(Autoload.get_string()))
#		q_OS.show_virtual_keyboard(Autoload.get_string())
#
