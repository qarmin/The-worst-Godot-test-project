extends Node2D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()
#BUG
#		if randi() % 2 == 1:
#			OS.set_clipboard(Autoload.get_string())
#		if randi() % 2 == 1:
#			OS.set_current_screen(Autoload.get_int())
#		if randi() % 2 == 1:
#			OS.set_exit_code(Autoload.get_int())
#		if randi() % 2 == 1:
#			OS.set_use_vsync(Autoload.get_bool())
#		if randi() % 2 == 1:
#			OS.set_low_processor_usage_mode(Autoload.get_bool())
#		if randi() % 2 == 1:
#			OS.set_keep_screen_on(Autoload.get_bool())
#		if randi() % 2 == 1:
#			OS.set_min_window_size(Autoload.get_vector2())
#		if randi() % 2 == 1:
#			OS.set_max_window_size(Autoload.get_vector2())
#		if randi() % 2 == 1:
#			OS.set_screen_orientation(Autoload.get_int()) #ScreenOrientation
#		if randi() % 2 == 1:
#			OS.set_borderless_window(Autoload.get_bool())
#		if randi() % 2 == 1:
#			OS.set_window_per_pixel_transparency_enabled(Autoload.get_bool())
#		if randi() % 2 == 1:
#			OS.set_window_fullscreen(Autoload.get_bool())
#		if randi() % 2 == 1:
#			OS.set_window_maximized(Autoload.get_bool())
#		if randi() % 2 == 1:
#			OS.set_window_minimized(Autoload.get_bool())
#		if randi() % 2 == 1:
#			OS.set_window_resizable(Autoload.get_bool())
#		if randi() % 2 == 1:
#			OS.set_window_position(Autoload.get_vector2())
#		if randi() % 2 == 1:
#			OS.set_window_size(Autoload.get_vector2())
#
#		# Shows a message
#		###if randi() % 2 == 1:
#		###	OS.alert(Autoload.get_string(),Autoload.get_string())
#
#		if randi() % 2 == 1:
#			OS.can_draw()
#		if randi() % 2 == 1:
#			OS.can_use_threads()
#
#		if randi() % 2 == 1:
#			OS.center_window()
#		if randi() % 2 == 1:
#			OS.close_midi_inputs()
#
#		### Delay don't use
#		###if randi() % 2 == 1:
#		###	OS.delay_msec(Autoload.get_int())
#		###if randi() % 2 == 1:
#		###	OS.delay_usec(Autoload.get_int())
#
#		if randi() % 2 == 1:
#			OS.dump_memory_to_file(Autoload.get_string())
#		if randi() % 2 == 1:
#			OS.dump_resources_to_file(Autoload.get_string())
#
#			###OS.execute(Autoload.get_string(),[Autoload.get_string(),Autoload.get_string()],Autoload.get_bool(),Autoload.get_array(),Autoload.get_bool()))
#		if randi() % 2 == 1:
#			OS.find_scancode_from_string(Autoload.get_string())
#
#		if randi() % 2 == 1:
#			OS.get_audio_driver_count()
#		if randi() % 2 == 1:
#			OS.get_audio_driver_name(Autoload.get_int())
#		if randi() % 2 == 1:
#			OS.get_cmdline_args()
#		if randi() % 2 == 1:
#			OS.get_connected_midi_inputs()
#		if randi() % 2 == 1:
#			OS.get_current_video_driver()
#		if randi() % 2 == 1:
#			OS.get_date(Autoload.get_bool())
#		if randi() % 2 == 1:
#			OS.get_datetime(Autoload.get_bool())
#	#	if randi() % 2 == 1: # BUG NEW, too long calculation of wrong data
#	#		OS.get_datetime_from_unix_time(Autoload.get_int())
#		if randi() % 2 == 1:
#			OS.get_dynamic_memory_usage()
#		if randi() % 2 == 1:
#			OS.get_environment(Autoload.get_string())
#		if randi() % 2 == 1:
#			OS.get_executable_path()
#		if randi() % 2 == 1:
#			OS.get_ime_selection()
#		if randi() % 2 == 1:
#			OS.get_ime_text()
#		if randi() % 2 == 1:
#			OS.get_latin_keyboard_variant()
#		if randi() % 2 == 1:
#			OS.get_locale()
#		if randi() % 2 == 1:
#			OS.get_model_name()
#		if randi() % 2 == 1:
#			OS.get_name()
#		if randi() % 2 == 1:
#			OS.get_power_percent_left()
#		if randi() % 2 == 1:
#			OS.get_power_seconds_left()
#		if randi() % 2 == 1:
#			OS.get_power_state()
#		if randi() % 2 == 1:
#			OS.get_process_id()
#		if randi() % 2 == 1:
#			OS.get_processor_count()
#		if randi() % 2 == 1:
#			OS.get_real_window_size()
#		if randi() % 2 == 1:
#			OS.get_scancode_string(Autoload.get_int())
#		if randi() % 2 == 1:
#			OS.get_screen_count()
#		if randi() % 2 == 1:
#			OS.get_screen_dpi(Autoload.get_int())
#		if randi() % 2 == 1:
#			OS.get_screen_position(Autoload.get_int())
#		if randi() % 2 == 1:
#			OS.get_screen_size(Autoload.get_int())
#		if randi() % 2 == 1:
#			OS.get_splash_tick_msec()
#		if randi() % 2 == 1:
#			OS.get_static_memory_peak_usage()
#		if randi() % 2 == 1:
#			OS.get_static_memory_usage()
#		if randi() % 2 == 1:
#			OS.get_system_dir(Autoload.get_int()) # SystemDir
#		if randi() % 2 == 1:
#			OS.get_system_time_msecs()
#		if randi() % 2 == 1:
#			OS.get_system_time_secs()
#		if randi() % 2 == 1:
#			OS.get_ticks_msec()
#		if randi() % 2 == 1:
#			OS.get_ticks_usec()
#		if randi() % 2 == 1:
#			OS.get_time(Autoload.get_bool())
#		if randi() % 2 == 1:
#			OS.get_time_zone_info()
#		if randi() % 2 == 1:
#			OS.get_unique_id()
#		if randi() % 2 == 1:
#			OS.get_unix_time()
#		if randi() % 2 == 1:
#			OS.get_unix_time_from_datetime(Autoload.get_dictionary())
#		if randi() % 2 == 1:
#			OS.get_user_data_dir()
#		if randi() % 2 == 1:
#			OS.get_video_driver_count()
#		if randi() % 2 == 1:
#			OS.get_video_driver_name(Autoload.get_int()) # VideoDriver
#		if randi() % 2 == 1:
#			OS.get_virtual_keyboard_height()
#		if randi() % 2 == 1:
#			OS.get_window_safe_area()
#
#		if randi() % 2 == 1:
#			OS.has_environment(Autoload.get_string())
#		if randi() % 2 == 1:
#			OS.has_feature(Autoload.get_string())
#		if randi() % 2 == 1:
#			OS.has_touchscreen_ui_hint()
#		if randi() % 2 == 1:
#			OS.has_virtual_keyboard()
#
#		if randi() % 2 == 1:
#			OS.hide_virtual_keyboard()
#
#		if randi() % 2 == 1:
#			OS.is_debug_build()
#		if randi() % 2 == 1:
#			OS.is_ok_left_and_cancel_right()
#		if randi() % 2 == 1:
#			OS.is_scancode_unicode(Autoload.get_int())
#		if randi() % 2 == 1:
#			OS.is_stdout_verbose()
#		if randi() % 2 == 1:
#			OS.is_userfs_persistent()
#		if randi() % 2 == 1:
#			OS.is_window_always_on_top()
#
#			###OS.kill(
#		if randi() % 2 == 1:
#			OS.move_window_to_foreground()
#
#		if randi() % 2 == 1:
#			OS.native_video_is_playing()
#		if randi() % 2 == 1:
#			OS.native_video_pause()
#		if randi() % 2 == 1:
#			OS.native_video_play(Autoload.get_string(),Autoload.get_float(),Autoload.get_string(),Autoload.get_string())
#		if randi() % 2 == 1:
#			OS.native_video_stop()
#		if randi() % 2 == 1:
#			OS.native_video_unpause()
#
#		if randi() % 2 == 1:
#			OS.open_midi_inputs()
#
#		if randi() % 2 == 1:
#			OS.print_all_resources(Autoload.get_string())
#		if randi() % 2 == 1:
#			OS.print_all_textures_by_size()
#		if randi() % 2 == 1:
#			OS.print_resources_by_type(Autoload.get_packedstringarray())
#		if randi() % 2 == 1:
#			OS.print_resources_in_use(Autoload.get_bool())
#
#		if randi() % 2 == 1:
#			OS.request_attention()
#		if randi() % 2 == 1:
#			OS.request_permission(Autoload.get_string())
#
#	#	if randi() % 2 == 1:
#	#		#OS.set_icon(temp_ImageTexture)
#		if randi() % 2 == 1:
#			OS.set_ime_active(Autoload.get_bool())
#		if randi() % 2 == 1:
#			OS.set_ime_position(Autoload.get_vector2())
#		if randi() % 2 == 1:
#			OS.set_native_icon(Autoload.get_string())
#		if randi() % 2 == 1:
#			OS.set_thread_name(Autoload.get_string())
#		if randi() % 2 == 1:
#			OS.set_use_file_access_save_and_swap(Autoload.get_bool())
#		if randi() % 2 == 1:
#			OS.set_window_always_on_top(Autoload.get_bool())
#		if randi() % 2 == 1:
#			OS.set_window_title(Autoload.get_string())
#
#		if randi() % 2 == 1:
#			OS.shell_open(Autoload.get_string())
#		if randi() % 2 == 1:
#			OS.show_virtual_keyboard(Autoload.get_string())
#
