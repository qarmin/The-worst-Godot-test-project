extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

#func _ready():
#	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#func _process(delta) -> void:
#	counter -= delta
#	var qq : String = ""
#	qq = qq
#
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#		var q_OS : OS = OS.new()
#
#		q_OS.set_clipboard(Autoload.get_string())
#		#q_OS.set_current_screen(randi()%50)
#		#q_OS.set_exit_code(randi()%50)
#		q_OS.set_use_vsync(bool(randi()%2))
#		q_OS.set_low_processor_usage_mode(bool(randi()%2))
#		q_OS.set_keep_screen_on(bool(randi()%2))
#		q_OS.set_min_window_size(Vector2(randf() * 50,randf() * 50))
#		q_OS.set_max_window_size(Vector2(randf() * 50 + 100,randf() * 50 + 100))
#		q_OS.set_screen_orientation(randi() % 7) #ScreenOrientation
#		q_OS.set_borderless_window(bool(randi()%2))
#		q_OS.set_window_per_pixel_transparency_enabled(bool(randi()%2))
#		#q_OS.set_window_fullscreen(bool(randi()%2))
#		#q_OS.set_window_maximized(bool(randi()%2))
#		#q_OS.set_window_minimized(bool(randi()%2))
#		q_OS.set_window_resizable(bool(randi()%2))
#		#q_OS.set_window_position(Vector2(randf() * 50,randf() * 50))
#		#q_OS.set_window_size(Vector2(randf() * 50,randf() * 50))
#
#		#q_OS.alert(Autoload.get_string(),Autoload.get_string())
#
#		qq += str(q_OS.can_draw())
#		qq += str(q_OS.can_use_threads())
#
#		q_OS.center_window()
#		q_OS.close_midi_inputs()
#
#		q_OS.delay_msec(randi()%2)
#		q_OS.delay_usec(randi()%5)
#
#		q_OS.dump_memory_to_file(Autoload.get_string())
#		q_OS.dump_resources_to_file(Autoload.get_string())
#
#		###qq += str(q_OS.execute(Autoload.get_string(),[Autoload.get_string(),Autoload.get_string()],bool(randi()%2),["ras"],bool(randi()%2)))
#		qq += str(q_OS.find_scancode_from_string(Autoload.get_string()))
#
#		qq += str(q_OS.get_audio_driver_count())
#		#qq += str(q_OS.get_audio_driver_name(randi()%50))
#		qq += str(q_OS.get_cmdline_args())
#		qq += str(q_OS.get_connected_midi_inputs())
#		qq += str(q_OS.get_current_video_driver())
#		qq += str(q_OS.get_date(bool(randi()%2)))
#		qq += str(q_OS.get_datetime(bool(randi()%2)))
#		qq += str(q_OS.get_datetime_from_unix_time(randi()%5000000))
#		qq += str(q_OS.get_dynamic_memory_usage())
#		qq += str(q_OS.get_environment(Autoload.get_string()))
#		qq += str(q_OS.get_executable_path())
#		qq += str(q_OS.get_ime_selection())
#		qq += str(q_OS.get_ime_text())
#		qq += str(q_OS.get_latin_keyboard_variant())
#		qq += str(q_OS.get_locale())
#		qq += str(q_OS.get_model_name())
#		qq += str(q_OS.get_name())
#		qq += str(q_OS.get_power_percent_left())
#		qq += str(q_OS.get_power_seconds_left())
#		qq += str(q_OS.get_power_state())
#		qq += str(q_OS.get_process_id())
#		qq += str(q_OS.get_processor_count())
#		qq += str(q_OS.get_real_window_size())
#		qq += str(q_OS.get_scancode_string(randi()%50))
#		qq += str(q_OS.get_screen_count())
#		qq += str(q_OS.get_screen_dpi(randi()%2))
#		qq += str(q_OS.get_screen_position(randi()%50))
#		qq += str(q_OS.get_screen_size(randi()%50))
#		qq += str(q_OS.get_splash_tick_msec())
#		qq += str(q_OS.get_static_memory_peak_usage())
#		qq += str(q_OS.get_static_memory_usage())
#		qq += str(q_OS.get_system_dir(randi() % 8)) # SystemDir
#		qq += str(q_OS.get_system_time_msecs())
#		qq += str(q_OS.get_system_time_secs())
#		qq += str(q_OS.get_ticks_msec())
#		qq += str(q_OS.get_ticks_usec())
#		qq += str(q_OS.get_time(bool(randi()%2)))
#		qq += str(q_OS.get_time_zone_info())
#		qq += str(q_OS.get_unique_id())
#		qq += str(q_OS.get_unix_time())
#		qq += str(q_OS.get_unix_time_from_datetime({Autoload.get_string():1992,Autoload.get_string():11,Autoload.get_string():11}))
#		qq += str(q_OS.get_user_data_dir())
#		qq += str(q_OS.get_video_driver_count())
#		qq += str(q_OS.get_video_driver_name(randi() % 2)) # VideoDriver
#		qq += str(q_OS.get_virtual_keyboard_height())
#		qq += str(q_OS.get_window_safe_area())
#
#		qq += str(q_OS.has_environment(Autoload.get_string()))
#		qq += str(q_OS.has_feature(Autoload.get_string()))
#		qq += str(q_OS.has_touchscreen_ui_hint())
#		qq += str(q_OS.has_virtual_keyboard())
#
#		q_OS.hide_virtual_keyboard()
#
#		qq += str(q_OS.is_debug_build())
#		qq += str(q_OS.is_ok_left_and_cancel_right())
#		qq += str(q_OS.is_scancode_unicode(randi()%50))
#		qq += str(q_OS.is_stdout_verbose())
#		qq += str(q_OS.is_userfs_persistent())
#		qq += str(q_OS.is_window_always_on_top())
#
#		###q_OS.kill(
#		q_OS.move_window_to_foreground()
#
#		qq += str(q_OS.native_video_is_playing())
#		q_OS.native_video_pause()
#		qq += str(q_OS.native_video_play(Autoload.get_string(),randf() * 50,Autoload.get_string(),Autoload.get_string()))
#		q_OS.native_video_stop()
#		q_OS.native_video_unpause()
#
#		q_OS.open_midi_inputs()
#
#		q_OS.print_all_resources(Autoload.get_string())
#		q_OS.print_all_textures_by_size()
#		q_OS.print_resources_by_type(PoolStringArray([Autoload.get_string(),Autoload.get_string()]))
#		q_OS.print_resources_in_use(bool(randi()%2))
#
#		q_OS.request_attention()
#		qq += str(q_OS.request_permission(Autoload.get_string()))
#
#		q_OS.set_icon(Autoload.loadA("res://RES/Sprite1.png"))
#		q_OS.set_ime_active(bool(randi()%2))
#		q_OS.set_ime_position(Vector2(randf() * 50,randf() * 50))
#		q_OS.set_native_icon("Roman")
#		qq += str(q_OS.set_thread_name(Autoload.get_string()))
#		q_OS.set_use_file_access_save_and_swap(bool(randi()%2))
#		q_OS.set_window_always_on_top(bool(randi()%2))
#		q_OS.set_window_title(Autoload.get_string())
#
#		qq += str(q_OS.shell_open(Autoload.get_string()))
#		q_OS.show_virtual_keyboard(Autoload.get_string())
#
