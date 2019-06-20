extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		## Performance
		qq += str(Performance.get_monitor(randi() % Performance.MONITOR_MAX))
		
		## ProjectSettings
		
		#TODO
		
		
		
		## IP
		IP.clear_cache("asfafsqwfas")
		IP.erase_resolve_item(0)
		
		qq += str(IP.get_local_addresses())
		#qq += str(IP.get_resolve_item_address(0))
		#qq += str(IP.get_resolve_item_status(0))
		
		#qq += str(IP.resolve_hostname("https://duckduckgo.com",randi() % (IP.TYPE_ANY + 1)))
		#qq += str(IP.resolve_hostname_queue_item("https://duckduckgo.com",randi() % (IP.TYPE_ANY + 1)))
		
		## Geometry
		qq += str(Geometry.build_box_planes(Vector3(randf() * 50,randf() * 50,randf() * 50)))
		qq += str(Geometry.build_capsule_planes(randf() * 50,randf() * 50,randi()%10,randi()%10,randi() % 3)) # AXIS
		qq += str(Geometry.build_cylinder_planes(randf() * 50,randf() * 50,randi()%10,randi() % 3)) # AXIS
		
		qq += str(Geometry.clip_polygon(PoolVector3Array([Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)]),Plane(randf() * 50,randf() * 50,randf() * 50,randf() * 50)))
		qq += str(Geometry.clip_polygons_2d(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]),PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)])))
		qq += str(Geometry.clip_polyline_with_polygon_2d(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]),PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)])))
		
		qq += str(Geometry.convex_hull_2d(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)])))
		qq += str(Geometry.exclude_polygons_2d(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]),PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)])))
		
		qq += str(Geometry.get_closest_point_to_segment(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
		qq += str(Geometry.get_closest_point_to_segment_2d(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		qq += str(Geometry.get_closest_point_to_segment_uncapped(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
		qq += str(Geometry.get_closest_point_to_segment_uncapped_2d(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		qq += str(Geometry.get_closest_points_between_segments(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
		qq += str(Geometry.get_closest_points_between_segments_2d(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		qq += str(Geometry.get_uv84_normal_bit(Vector3(randf() * 50,randf() * 50,randf() * 50)))
		
		qq += str(Geometry.intersect_polygons_2d(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]),PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)])))
		qq += str(Geometry.intersect_polyline_with_polygon_2d(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]),PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)])))

		qq += str(Geometry.is_polygon_clockwise(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)])))
		qq += str(Geometry.line_intersects_line_2d(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		qq += str(Geometry.make_atlas(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)])))
		qq += str(Geometry.merge_polygons_2d(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]),PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)])))

		qq += str(Geometry.offset_polygon_2d(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]), randf() * 50, randi() %3)) # PolyJointType
		#qq += str(Geometry.offset_polyline_2d(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]), randf() * 50, randi() %3, randi() % 5)) # PolyJointType, PoolEndtype

		qq += str(Geometry.point_is_inside_triangle(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		qq += str(Geometry.ray_intersects_triangle(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))

		qq += str(Geometry.segment_intersects_circle(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),randf() * 50))
		qq += str(Geometry.segment_intersects_convex(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),[Plane(randf() * 50,randf() * 50,randf() * 50,randf() * 50)]))
		qq += str(Geometry.segment_intersects_cylinder(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),randf() * 50,randf() * 50))
		qq += str(Geometry.segment_intersects_segment_2d(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		qq += str(Geometry.segment_intersects_sphere(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),randf() * 50))
		qq += str(Geometry.segment_intersects_triangle(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))

		qq += str(Geometry.transform_points_2d(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]),Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50))))
		
		qq += str(Geometry.triangulate_delaunay_2d(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)])))
		qq += str(Geometry.triangulate_polygon(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)])))
		
		## ResourceLoader

		#qq += str(ResourceLoader.exists("asfafs", "fasfqawtg"))
		qq += str(ResourceLoader.get_dependencies("asdtgwqfeaga"))
		#qq += str(ResourceLoader.get_recognized_extensions_for_type("asdtgwqfeaga"))
		#DEPRECATED qq += str(ResourceLoader.has("asdtgwqfeaga"))
		qq += str(ResourceLoader.has_cached("asdtgwqfeaga"))
		#qq += str(ResourceLoader.load("asdtgwqfeaga","asdtgwqfeaga", bool(randi() % 2)))
		#qq += str(ResourceLoader.load_interactive("asdtgwqfeaga","asdtgwqfeaga"))
		ResourceLoader.set_abort_on_missing_resources(bool(randi() % 2))

		## ResourceSaver

		qq += str(ResourceSaver.get_recognized_extensions(CubeMesh.new()))
		qq += str(ResourceSaver.save("asfadw",CubeMesh.new(),randi() % 128))  # SaverFlags

		## OS

		OS.set_clipboard(str(randi() % 1000000))
		#OS.set_current_screen(randi()%50)
		#OS.set_exit_code(randi()%50)
		OS.set_use_vsync(bool(randi()%2))
		OS.set_low_processor_usage_mode(bool(randi()%2))
		OS.set_keep_screen_on(bool(randi()%2))
		OS.set_min_window_size(Vector2(randf() * 50,randf() * 50))
		OS.set_max_window_size(Vector2(randf() * 50 + 100,randf() * 50 + 100))
		OS.set_screen_orientation(randi() % 7) #ScreenOrientation
		OS.set_borderless_window(bool(randi()%2))
		OS.set_window_per_pixel_transparency_enabled(bool(randi()%2))
		#OS.set_window_fullscreen(bool(randi()%2))
		#OS.set_window_maximized(bool(randi()%2))
		#OS.set_window_minimized(bool(randi()%2))
		OS.set_window_resizable(bool(randi()%2))
		#OS.set_window_position(Vector2(randf() * 50,randf() * 50))
		#OS.set_window_size(Vector2(randf() * 50,randf() * 50))

		#OS.alert("afsfqwaasf","asfwfagwas")
		
		qq += str(OS.can_draw())
		qq += str(OS.can_use_threads())
		
		OS.center_window()
		OS.close_midi_inputs()
		
		OS.delay_msec(randi()%2)
		OS.delay_usec(randi()%5)
		
		OS.dump_memory_to_file("user://rrr.txt")
		OS.dump_resources_to_file("user://rrr.txt")
		
		###qq += str(OS.execute("godoaft",["asfasf","qwfa"],bool(randi()%2),["ras"],bool(randi()%2)))
		qq += str(OS.find_scancode_from_string("godoafat"))
		
		qq += str(OS.get_audio_driver_count())
		#qq += str(OS.get_audio_driver_name(randi()%50))
		qq += str(OS.get_cmdline_args())
		qq += str(OS.get_connected_midi_inputs())
		qq += str(OS.get_current_video_driver())
		qq += str(OS.get_date(bool(randi()%2)))
		qq += str(OS.get_datetime(bool(randi()%2)))
		qq += str(OS.get_datetime_from_unix_time(randi()%5000000))
		qq += str(OS.get_dynamic_memory_usage())
		qq += str(OS.get_environment("ENV"))
		qq += str(OS.get_executable_path())
		qq += str(OS.get_ime_selection())
		qq += str(OS.get_ime_text())
		qq += str(OS.get_latin_keyboard_variant())
		qq += str(OS.get_locale())
		qq += str(OS.get_model_name())
		qq += str(OS.get_name())
		qq += str(OS.get_power_percent_left())
		qq += str(OS.get_power_seconds_left())
		qq += str(OS.get_power_state())
		qq += str(OS.get_process_id())
		qq += str(OS.get_processor_count())
		qq += str(OS.get_real_window_size())
		qq += str(OS.get_scancode_string(randi()%50))
		qq += str(OS.get_screen_count())
		qq += str(OS.get_screen_dpi(randi()%2))
		qq += str(OS.get_screen_position(randi()%50))
		qq += str(OS.get_screen_size(randi()%50))
		qq += str(OS.get_splash_tick_msec())
		qq += str(OS.get_static_memory_peak_usage())
		qq += str(OS.get_static_memory_usage())
		qq += str(OS.get_system_dir(randi() % 8)) # SystemDir
		qq += str(OS.get_system_time_msecs())
		qq += str(OS.get_system_time_secs())
		qq += str(OS.get_ticks_msec())
		qq += str(OS.get_ticks_usec())
		qq += str(OS.get_time(bool(randi()%2)))
		qq += str(OS.get_time_zone_info())
		qq += str(OS.get_unique_id())
		qq += str(OS.get_unix_time())
		qq += str(OS.get_unix_time_from_datetime({"year":1992,"month":11,"day":11}))
		qq += str(OS.get_user_data_dir())
		qq += str(OS.get_video_driver_count())
		qq += str(OS.get_video_driver_name(randi() % 2)) # VideoDriver
		qq += str(OS.get_virtual_keyboard_height())
		qq += str(OS.get_window_safe_area())

		qq += str(OS.has_environment("asfa"))
		qq += str(OS.has_feature("asfqwf"))
		qq += str(OS.has_touchscreen_ui_hint())
		qq += str(OS.has_virtual_keyboard())

		OS.hide_virtual_keyboard()

		qq += str(OS.is_debug_build())
		qq += str(OS.is_ok_left_and_cancel_right())
		qq += str(OS.is_scancode_unicode(randi()%50))
		qq += str(OS.is_stdout_verbose())
		qq += str(OS.is_userfs_persistent())
		qq += str(OS.is_window_always_on_top())

		###OS.kill(
		OS.move_window_to_foreground()

		qq += str(OS.native_video_is_playing())
		OS.native_video_pause()
		qq += str(OS.native_video_play("asf",randf() * 50,"asfqwf","asfqwfqw"))
		OS.native_video_stop()
		OS.native_video_unpause()

		OS.open_midi_inputs()

		OS.print_all_resources("asfasfqwrq")
		OS.print_all_textures_by_size()
		OS.print_resources_by_type(PoolStringArray(["asfqw","afqw"]))
		OS.print_resources_in_use(bool(randi()%2))

		OS.request_attention()
		qq += str(OS.request_permission("NO"))

		OS.set_icon(load("res://Sprite1.png"))
		OS.set_ime_active(bool(randi()%2))
		OS.set_ime_position(Vector2(randf() * 50,randf() * 50))
		OS.set_native_icon("Roman")
		qq += str(OS.set_thread_name("Cztery"))
		OS.set_use_file_access_save_and_swap(bool(randi()%2))
		OS.set_window_always_on_top(bool(randi()%2))
		OS.set_window_title("Ziemniaki")

		qq += str(OS.shell_open("Pasztetowa"))
		OS.show_virtual_keyboard("Kromki")

		## Engine

		Engine.set_editor_hint(bool(randi()%2))
		Engine.set_iterations_per_second(randi()%50)
		Engine.set_target_fps(randi()%50 + 40)
		Engine.set_time_scale(randf() + 1)
		Engine.set_physics_jitter_fix(randf() * 50)

		qq += str(Engine.get_author_info())
		qq += str(Engine.get_copyright_info())
		qq += str(Engine.get_donor_info())
		qq += str(Engine.get_frames_drawn())
		qq += str(Engine.get_frames_per_second())
		qq += str(Engine.get_license_info())
		qq += str(Engine.get_license_text())
		qq += str(Engine.get_main_loop())
		#qq += str(Engine.get_singleton("sfafas"))
		qq += str(Engine.get_version_info())
		
		qq += str(Engine.has_singleton("asfasfqw"))
		qq += str(Engine.is_in_physics_frame())

		## ClassDB

		#qq += str(ClassDB.can_instance("String"))
		
		qq += str(ClassDB.class_exists("String"))
		#qq += str(ClassDB.class_get_category("String"))
		#qq += str(ClassDB.class_get_integer_constant("String", "String"))
		qq += str(ClassDB.class_get_integer_constant_list("String",bool(randi()%2)))
		qq += str(ClassDB.class_get_method_list("String", bool(randi()%2)))
		qq += str(ClassDB.class_get_property(self,"String"))
		qq += str(ClassDB.class_get_property_list("String", bool(randi()%2)))
		qq += str(ClassDB.class_get_signal("String", "String"))
		#qq += str(ClassDB.class_get_signal_list("String", bool(randi()%2)))
		qq += str(ClassDB.class_has_integer_constant("String","String"))
		qq += str(ClassDB.class_has_method("String","String", bool(randi()%2)))
		qq += str(ClassDB.class_has_signal("String", "String"))
		qq += str(ClassDB.class_set_property(self,"String", String("asf")))
		
		qq += str(ClassDB.get_class_list())
		qq += str(ClassDB.get_inheriters_from_class("String"))
		#qq += str(ClassDB.get_parent_class("String"))
		
		#qq += str(ClassDB.instance("String"))
		
		#qq += str(ClassDB.is_class_enabled("String"))
		qq += str(ClassDB.is_parent_class("String","String"))

		## Marshalls

		#qq += str(Marshalls.base64_to_raw("asfqwfasfasfasfas"))
		#qq += str(Marshalls.base64_to_utf8("asfqwfasfasfasfas"))
		#qq += str(Marshalls.base64_to_variant("asfqwfasfasfasfas",bool(randi()%2)))
		#qq += str(Marshalls.raw_to_base64(PoolByteArray([1221,124,12421,4])))
		#qq += str(Marshalls.utf8_to_base64("asfqwfasfasfasfas"))
		#qq += str(Marshalls.variant_to_base64(String(),bool(randi()%2)))

		## TranslationServer

		TranslationServer.add_translation(Translation.new())
		TranslationServer.clear()

		#TranslationServer.get_loaded_locales()
		#TranslationServer.get_locale()
		#TranslationServer.get_locale_name("pl")

		TranslationServer.remove_translation(Translation.new())
		TranslationServer.set_locale("pl")
		#qq += str(TranslationServer.translate("pls"))

		## Input

#		Input.action_press("Rafal",randf() * 50)
#		Input.action_release("Roman")
#
#		Input.add_joy_mapping("Lif",bool(randi()%2))
#
#		qq += str(Input.get_accelerometer())
#		qq += str(Input.get_action_strength("Jestes?"))
#		qq += str(Input.get_connected_joypads())
#		qq += str(Input.get_current_cursor_shape())
#		qq += str(Input.get_gravity())
#		qq += str(Input.get_gyroscope())
#		qq += str(Input.get_joy_axis(randi()%50,randi()%50))
#		#qq += str(Input.get_joy_axis_index_from_string(str(randi() % 100000)))
#		#qq += str(Input.get_joy_axis_string(randi()%50))
#		#qq += str(Input.get_joy_button_index_from_string("Przycisk"))
#		#qq += str(Input.get_joy_button_string(randi()%50))
#		qq += str(Input.get_joy_guid(randi()%50))
#		qq += str(Input.get_joy_name(randi()%50))
#		qq += str(Input.get_joy_vibration_duration(randi()%50))
#		qq += str(Input.get_joy_vibration_strength(randi()%50))
#		qq += str(Input.get_last_mouse_speed())
#		qq += str(Input.get_magnetometer())
#		qq += str(Input.get_mouse_button_mask())
#		qq += str(Input.get_mouse_mode())
#
#		qq += str(Input.is_action_just_pressed("Wredny"))
#		qq += str(Input.is_action_just_released("Kol"))
#		qq += str(Input.is_action_pressed("Zdjecia"))
#		qq += str(Input.is_joy_button_pressed(randi()%50,randi()%50))
#		qq += str(Input.is_joy_known(randi()%50))
#		qq += str(Input.is_key_pressed(randi()%50))
#		qq += str(Input.is_mouse_button_pressed(randi()%50))
#
#		Input.joy_connection_changed(randi()%50, bool(randi()%2), "Studnia", "Olnowek") 
#		#Input.parse_input_event(InputEvent.new())
#		Input.remove_joy_mapping("Grace")
#
#		#Input.set_custom_mouse_cursor(load("res://Sprite1.png"), randi() % 17,Vector2(randf() * 50,randf() * 50)) #CursorShape
#		Input.set_default_cursor_shape(randi() % 17) #CursorShape
#		Input.set_mouse_mode(randi() % 4) #MouseMode
#		Input.set_use_accumulated_input(bool(randi()%2))
#
#		#Input.start_joy_vibration(randi()%50,randf() * 50,randf() * 50,randf() * 50)
#		Input.stop_joy_vibration(randi()%50)
#		#Input.warp_mouse_position(Vector2(randf() * 50,randf() * 50))

		## InputMap

		#InputMap.action_add_event("Geralt",InputEvent.new())
		#InputMap.action_erase_event("swiat",InputEvent.new())
		#InputMap.action_erase_events("Okno")
		#qq += str(InputMap.action_has_event("Duck",InputEvent.new()))
		#InputMap.action_set_deadzone("Kichacz",randf() * 50)
		
		InputMap.add_action("APlik",randf() * 50)
		#InputMap.erase_action("Brachol")
		#InputMap.event_is_action(InputEvent.new(),"Pieniacz")
		
		qq += str(InputMap.get_action_list("Bohater"))
		qq += str(InputMap.get_actions())
		
		qq += str(InputMap.has_action("Zlap"))
		InputMap.load_from_globals()

		## JSON

		qq += str(JSON.parse("Konceptualny"))
		qq += str(JSON.print("Brzeczyszczykiewicz","lekolody",bool(randi()%2)))

		## JavaScript

		qq += str(JavaScript.eval("17",bool(randi()%2)))

		## NavigationMeshGenerator

		### EditorNavigationMeshGenerator.bake(NavigationMesh.new(),get_parent())
		### EditorNavigationMeshGenerator.clear(NavigationMesh.new())

		## VisualScriptEditor

		#VisualScriptEditor.add_custom_node("Reklama","Qarmin", Script.new())
		#VisualScriptEditor.remove_custom_node("Wam Wszystkim", "Sztuczne drzwi")
		
		## VisualServer
		
#		VisualServer.black_bars_set_images(
#		VisualServer.black_bars_set_margins(
#		VisualServer.camera_create()
#		VisualServer.camera_set_cull_mask(
#		VisualServer.camera_set_environment(
#		VisualServer.camera_set_frustum(
#		VisualServer.camera_set_orthogonal(
#		VisualServer.camera_set_perspective(
#		VisualServer.camera_set_transform(
#		VisualServer.camera_set_use_vertical_aspect(
#
#		VisualServer.canvas_create()
#		VisualServer.canvas_item_add_circle(
#		VisualServer.canvas_item_add_clip_ignore(
#		VisualServer.canvas_item_add_line(
#		VisualServer.canvas_item_add_mesh(
#		VisualServer.canvas_item_add_multimesh(
#		VisualServer.canvas_item_add_nine_patch(
#		VisualServer.canvas_item_add_particles(
#		VisualServer.canvas_item_add_polygon(
#		VisualServer.canvas_item_add_polyline(
#		VisualServer.canvas_item_add_primitive(
#		VisualServer.canvas_item_add_rect(
#		VisualServer.canvas_item_add_set_transform(
#		VisualServer.canvas_item_add_texture_rect(
#		VisualServer.canvas_item_add_texture_rect_region(
#		VisualServer.canvas_item_add_triangle_array(
#		VisualServer.canvas_item_clear(
#		VisualServer.canvas_item_create()
#		VisualServer.canvas_item_set_clip(
#		VisualServer.canvas_item_set_copy_to_backbuffer(
#		VisualServer.canvas_item_set_custom_rect(
#		VisualServer.canvas_item_set_distance_field_mode(
#		VisualServer.canvas_item_set_draw_behind_parent(
#		VisualServer.canvas_item_set_draw_index(
#		VisualServer.canvas_item_set_light_mask(
#		VisualServer.canvas_item_set_material(
#		VisualServer.canvas_item_set_modulate(
#		VisualServer.canvas_item_set_parent(
#		VisualServer.canvas_item_set_self_modulate(
#		VisualServer.canvas_item_set_sort_children_by_y(
#		VisualServer.canvas_item_set_transform(
#		VisualServer.canvas_item_set_use_parent_material(
#		VisualServer.canvas_item_set_visible(
#		VisualServer.canvas_item_set_z_as_relative_to_parent(
#		VisualServer.canvas_item_set_z_index(
#		VisualServer.canvas_light_attach_to_canvas(
#		VisualServer.canvas_light_create()
#		VisualServer.canvas_light_occluder_attach_to_canvas(
#		VisualServer.canvas_light_occluder_create()
#		VisualServer.canvas_light_occluder_set_enabled(
#		VisualServer.canvas_light_occluder_set_light_mask(
#		VisualServer.canvas_light_occluder_set_polygon(
#		VisualServer.canvas_light_occluder_set_transform(
#		VisualServer.canvas_light_set_color(
#		VisualServer.canvas_light_set_enabled(
#		VisualServer.canvas_light_set_energy(
#		VisualServer.canvas_light_set_height(
#		VisualServer.canvas_light_set_item_cull_mask(
#		VisualServer.canvas_light_set_item_shadow_cull_mask(
#		VisualServer.canvas_light_set_layer_range(
#		VisualServer.canvas_light_set_mode(
#		VisualServer.canvas_light_set_scale(
#		VisualServer.canvas_light_set_shadow_buffer_size(
#		VisualServer.canvas_light_set_shadow_color(
#		VisualServer.canvas_light_set_shadow_enabled(
#		VisualServer.canvas_light_set_shadow_filter(
#		VisualServer.canvas_light_set_shadow_gradient_length(
#		VisualServer.canvas_light_set_shadow_smooth(
#		VisualServer.canvas_light_set_texture(
#		VisualServer.canvas_light_set_texture_offset(
#		VisualServer.canvas_light_set_transform(
#		VisualServer.canvas_light_set_z_range(
#		VisualServer.canvas_occluder_polygon_create()
#		VisualServer.canvas_occluder_polygon_set_cull_mode(
#		VisualServer.canvas_occluder_polygon_set_shape(
#		VisualServer.canvas_occluder_polygon_set_shape_as_lines(
#		VisualServer.canvas_set_item_mirroring(
#		VisualServer.canvas_set_modulate(
#		VisualServer.directional_light_create()
#		VisualServer.draw(
#		VisualServer.environment_create()
#		VisualServer.environment_set_adjustment(
#		VisualServer.environment_set_ambient_light(
#		VisualServer.environment_set_background(
#		VisualServer.environment_set_bg_color(
#		VisualServer.environment_set_bg_energy(
#		VisualServer.environment_set_canvas_max_layer(
#		VisualServer.environment_set_dof_blur_far(
#		VisualServer.environment_set_dof_blur_near(
#		VisualServer.environment_set_fog(
#		VisualServer.environment_set_fog_depth(
#		VisualServer.environment_set_glow(
#		VisualServer.environment_set_sky(
#		VisualServer.environment_set_sky_custom_fov(
#		VisualServer.environment_set_sky_orientation(
#		VisualServer.environment_set_ssao(
#		VisualServer.environment_set_ssr(
#		VisualServer.environment_set_tonemap(
#		VisualServer.finish()
#		VisualServer.force_draw(
#		VisualServer.force_sync()
#		VisualServer.get_render_info(
#		VisualServer.get_test_cube()
#		VisualServer.get_test_texture()
#		VisualServer.get_white_texture()
#		VisualServer.gi_probe_create()
#		VisualServer.gi_probe_get_bias(
#		VisualServer.gi_probe_get_bounds(
#		VisualServer.gi_probe_get_cell_size(
#		VisualServer.gi_probe_get_dynamic_data(
#		VisualServer.gi_probe_get_dynamic_range(
#		VisualServer.gi_probe_get_energy(
#		VisualServer.gi_probe_get_normal_bias(
#		VisualServer.gi_probe_get_propagation(
#		VisualServer.gi_probe_get_to_cell_xform(
#		VisualServer.gi_probe_is_compressed(
#		VisualServer.gi_probe_is_interior(
#		VisualServer.gi_probe_set_bias(
#		VisualServer.gi_probe_set_bounds(
#		VisualServer.gi_probe_set_cell_size(
#		VisualServer.gi_probe_set_compress(
#		VisualServer.gi_probe_set_dynamic_data(
#		VisualServer.gi_probe_set_dynamic_range(
#		VisualServer.gi_probe_set_energy(
#		VisualServer.gi_probe_set_interior(
#		VisualServer.gi_probe_set_normal_bias(
#		VisualServer.gi_probe_set_propagation(
#		VisualServer.gi_probe_set_to_cell_xform(
#		VisualServer.has_changed()
#		VisualServer.has_feature(
#		VisualServer.has_os_feature(
#		VisualServer.immediate_begin(
#		VisualServer.immediate_clear(
#		VisualServer.immediate_color(
#		VisualServer.immediate_end(
#		VisualServer.immediate_get_material(
#		VisualServer.immediate_normal(
#		VisualServer.immediate_set_material(
#		VisualServer.immediate_tangent(
#		VisualServer.immediate_uv(
#		VisualServer.immediate_uv2(
#		VisualServer.immediate_vertex(
#		VisualServer.immediate_vertex_2d(
#		VisualServer.init()
#		VisualServer.instance_attach_object_instance_id(
#		VisualServer.instance_attach_skeleton(
#		VisualServer.instance_create()
#		VisualServer.instance_create2(
#		VisualServer.instance_geometry_set_as_instance_lod(
#		VisualServer.instance_geometry_set_cast_shadows_setting(
#		VisualServer.instance_geometry_set_draw_range(
#		VisualServer.instance_geometry_set_flag(
#		VisualServer.instance_geometry_set_material_override(
#		VisualServer.instance_set_base(
#		VisualServer.instance_set_blend_shape_weight(
#		VisualServer.instance_set_custom_aabb(
#		VisualServer.instance_set_exterior(
#		VisualServer.instance_set_extra_visibility_margin(
#		VisualServer.instance_set_layer_mask(
#		VisualServer.instance_set_scenario(
#		VisualServer.instance_set_surface_material(
#		VisualServer.instance_set_transform(
#		VisualServer.instance_set_use_lightmap(
#		VisualServer.instance_set_visible(
#		VisualServer.instances_cull_aabb(
#		VisualServer.instances_cull_convex(
#		VisualServer.instances_cull_ray(
#		VisualServer.light_directional_set_blend_splits(
#		VisualServer.light_directional_set_shadow_depth_range_mode(
#		VisualServer.light_directional_set_shadow_mode(
#		VisualServer.light_omni_set_shadow_detail(
#		VisualServer.light_omni_set_shadow_mode(
#		VisualServer.light_set_color(
#		VisualServer.light_set_cull_mask(
#		VisualServer.light_set_negative(
#		VisualServer.light_set_param(
#		VisualServer.light_set_projector(
#		VisualServer.light_set_reverse_cull_face_mode(
#		VisualServer.light_set_shadow(
#		VisualServer.light_set_shadow_color(
#		VisualServer.light_set_use_gi(
#		VisualServer.lightmap_capture_create()
#		VisualServer.lightmap_capture_get_bounds(
#		VisualServer.lightmap_capture_get_energy(
#		VisualServer.lightmap_capture_get_octree(
#		VisualServer.lightmap_capture_get_octree_cell_subdiv(
#		VisualServer.lightmap_capture_get_octree_cell_transform(
#		VisualServer.lightmap_capture_set_bounds(
#		VisualServer.lightmap_capture_set_energy(
#		VisualServer.lightmap_capture_set_octree(
#		VisualServer.lightmap_capture_set_octree_cell_subdiv(
#		VisualServer.lightmap_capture_set_octree_cell_transform(
#		VisualServer.make_sphere_mesh(
#		VisualServer.material_create()
#		VisualServer.material_get_param(
#		VisualServer.material_get_param_default(
#		VisualServer.material_get_shader(
#		VisualServer.material_set_line_width(
#		VisualServer.material_set_next_pass(
#		VisualServer.material_set_param(
#		VisualServer.material_set_render_priority(
#		VisualServer.material_set_shader(
#		VisualServer.mesh_add_surface_from_arrays(
#		VisualServer.mesh_clear(
#		VisualServer.mesh_create()
#		VisualServer.mesh_get_blend_shape_count(
#		VisualServer.mesh_get_blend_shape_mode(
#		VisualServer.mesh_get_custom_aabb(
#		VisualServer.mesh_get_surface_count(
#		VisualServer.mesh_remove_surface(
#		VisualServer.mesh_set_blend_shape_count(
#		VisualServer.mesh_set_blend_shape_mode(
#		VisualServer.mesh_set_custom_aabb(
#		VisualServer.mesh_surface_get_aabb(
#		VisualServer.mesh_surface_get_array(
#		VisualServer.mesh_surface_get_array_index_len(
#		VisualServer.mesh_surface_get_array_len(
#		VisualServer.mesh_surface_get_arrays(
#		VisualServer.mesh_surface_get_blend_shape_arrays(
#		VisualServer.mesh_surface_get_format(
#		VisualServer.mesh_surface_get_format_offset(
#		VisualServer.mesh_surface_get_format_stride(
#		VisualServer.mesh_surface_get_index_array(
#		VisualServer.mesh_surface_get_material(
#		VisualServer.mesh_surface_get_primitive_type(
#		VisualServer.mesh_surface_get_skeleton_aabb(
#		VisualServer.mesh_surface_set_material(
#		VisualServer.multimesh_allocate(
#		VisualServer.multimesh_get_aabb(
#		VisualServer.multimesh_get_instance_count(
#		VisualServer.multimesh_get_mesh(
#		VisualServer.multimesh_get_visible_instances(
#		VisualServer.multimesh_instance_get_color(
#		VisualServer.multimesh_instance_get_custom_data(
#		VisualServer.multimesh_instance_get_transform(
#		VisualServer.multimesh_instance_get_transform_2d(
#		VisualServer.multimesh_instance_set_color(
#		VisualServer.multimesh_instance_set_custom_data(
#		VisualServer.multimesh_instance_set_transform(
#		VisualServer.multimesh_instance_set_transform_2d(
#		VisualServer.multimesh_set_as_bulk_array(
#		VisualServer.multimesh_set_mesh(
#
#		VisualServer.omni_light_create()
#
#		VisualServer.particles_create()
#		VisualServer.particles_get_current_aabb(
#		VisualServer.particles_get_emitting(
#		VisualServer.particles_restart(
#		VisualServer.particles_set_amount(
#		VisualServer.particles_set_custom_aabb(
#		VisualServer.particles_set_draw_order(
#		VisualServer.particles_set_draw_pass_mesh(
#		VisualServer.particles_set_draw_passes(
#		VisualServer.particles_set_emission_transform(
#		VisualServer.particles_set_emitting(
#		VisualServer.particles_set_explosiveness_ratio(
#		VisualServer.particles_set_fixed_fps(
#		VisualServer.particles_set_fractional_delta(
#		VisualServer.particles_set_lifetime(
#		VisualServer.particles_set_one_shot(
#		VisualServer.particles_set_pre_process_time(
#		VisualServer.particles_set_process_material(
#		VisualServer.particles_set_randomness_ratio(
#		VisualServer.particles_set_speed_scale(
#		VisualServer.particles_set_use_local_coordinates(
#		VisualServer.reflection_probe_create()
#		VisualServer.reflection_probe_set_as_interior(
#		VisualServer.reflection_probe_set_cull_mask(
#		VisualServer.reflection_probe_set_enable_box_projection(
#		VisualServer.reflection_probe_set_enable_shadows(
#		VisualServer.reflection_probe_set_extents(
#		VisualServer.reflection_probe_set_intensity(
#		VisualServer.reflection_probe_set_interior_ambient(
#		VisualServer.reflection_probe_set_interior_ambient_energy(
#		VisualServer.reflection_probe_set_interior_ambient_probe_contribution(
#		VisualServer.reflection_probe_set_max_distance(
#		VisualServer.reflection_probe_set_origin_offset(
#		VisualServer.reflection_probe_set_update_mode(
#		VisualServer.request_frame_drawn_callback(
#		VisualServer.scenario_create()
#		VisualServer.scenario_set_debug(
#		VisualServer.scenario_set_environment(
#		VisualServer.scenario_set_fallback_environment(
#		VisualServer.scenario_set_reflection_atlas_size(
#		VisualServer.set_boot_image(
#		VisualServer.set_debug_generate_wireframes(
#		VisualServer.set_default_clear_color(
#		VisualServer.shader_create()
#		VisualServer.shader_get_code(
#		VisualServer.shader_get_default_texture_param(
#		VisualServer.shader_get_param_list(
#		VisualServer.shader_set_code(
#		VisualServer.shader_set_default_texture_param(
#		VisualServer.skeleton_allocate(
#		VisualServer.skeleton_bone_get_transform(
#		VisualServer.skeleton_bone_get_transform_2d(
#		VisualServer.skeleton_bone_set_transform(
#		VisualServer.skeleton_bone_set_transform_2d(
#		VisualServer.skeleton_create()
#		VisualServer.skeleton_get_bone_count(
#		VisualServer.sky_create()
#		VisualServer.spot_light_create()
#		VisualServer.sync()
#		VisualServer.texture_allocate(
#		VisualServer.texture_create()
#		VisualServer.texture_create_from_image(
#		VisualServer.texture_debug_usage()
#		VisualServer.texture_get_data(
#		VisualServer.texture_get_depth(
#		VisualServer.texture_get_flags(
#		VisualServer.texture_get_format(
#		VisualServer.texture_get_height(
#		VisualServer.texture_get_path(
#		VisualServer.texture_get_texid(
#		VisualServer.texture_get_type(
#		VisualServer.texture_get_width(
#		VisualServer.texture_set_data(
#		VisualServer.texture_set_flags(
#		VisualServer.texture_set_path(
#		VisualServer.texture_set_shrink_all_x2_on_set_data(
#		VisualServer.texture_set_size_override(
#		VisualServer.textures_keep_original(
#		VisualServer.viewport_attach_camera(
#		VisualServer.viewport_attach_canvas(
#		VisualServer.viewport_attach_to_screen(
#		VisualServer.viewport_create()
#		VisualServer.viewport_detach(
#		VisualServer.viewport_get_render_info(
#		VisualServer.viewport_get_texture(
#		VisualServer.viewport_remove_canvas(
#		VisualServer.viewport_set_active(
#		VisualServer.viewport_set_canvas_stacking(
#		VisualServer.viewport_set_canvas_transform(
#		VisualServer.viewport_set_clear_mode(
#		VisualServer.viewport_set_debug_draw(
#		VisualServer.viewport_set_disable_3d(
#		VisualServer.viewport_set_disable_environment(
#		VisualServer.viewport_set_global_canvas_transform(
#		VisualServer.viewport_set_hdr(
#		VisualServer.viewport_set_hide_canvas(
#		VisualServer.viewport_set_hide_scenario(
#		VisualServer.viewport_set_msaa(
#		VisualServer.viewport_set_parent_viewport(
#		VisualServer.viewport_set_render_direct_to_screen(
#		VisualServer.viewport_set_scenario(
#		VisualServer.viewport_set_shadow_atlas_quadrant_subdivision(
#		VisualServer.viewport_set_shadow_atlas_size(
#		VisualServer.viewport_set_size(
#		VisualServer.viewport_set_transparent_background(
#		VisualServer.viewport_set_update_mode(
#		VisualServer.viewport_set_usage(
#		VisualServer.viewport_set_use_arvr(
#		VisualServer.viewport_set_vflip(
		
		
		
		## AudioServer
		
		
		
		## PhysicsServer
		
		
		
		## Physics2DServer
		
		
		
		## ARVRServer
		
		
		
