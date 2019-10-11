extends Viewport

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq

	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

		if randi() % 2 == 1:
			set_use_arvr(bool(randi()%2))
		if randi() % 2 == 1:
			set_size(Vector2(Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			set_use_own_world(bool(randi()%2))
		if randi() % 2 == 1:
			set_world(World.new())
		if randi() % 2 == 1:
			set_world_2d(World2D.new())
		if randi() % 2 == 1:
			set_transparent_background(bool(randi()%2))
		if randi() % 2 == 1:
			set_handle_input_locally(bool(randi()%2))
		if randi() % 2 == 1:
			set_msaa(Autoload.get_randi()) # MSAA
		if randi() % 2 == 1:
			set_hdr(bool(randi()%2))
		if randi() % 2 == 1:
			set_disable_3d(bool(randi()%2))
		if randi() % 2 == 1:
			set_keep_3d_linear(bool(randi()%2))
		if randi() % 2 == 1:
			set_usage(Autoload.get_randi()) # Usage
		if randi() % 2 == 1:
			set_use_render_direct_to_screen(bool(randi()%2))
		if randi() % 2 == 1:
			set_debug_draw(Autoload.get_randi()) #DebugDraw
		if randi() % 2 == 1:
			set_vflip(bool(randi()%2))
		if randi() % 2 == 1:
			set_clear_mode(Autoload.get_randi()) #ClearMode
		if randi() % 2 == 1:
			set_update_mode(Autoload.get_randi()) #UpdateMode
		if randi() % 2 == 1:
			set_as_audio_listener_2d(bool(randi()%2))
		if randi() % 2 == 1:
			set_as_audio_listener(bool(randi()%2))
		if randi() % 2 == 1:
			set_physics_object_picking(bool(randi()%2))
		if randi() % 2 == 1:
			set_disable_input(bool(randi()%2))
		if randi() % 2 == 1:
			set_snap_controls_to_pixels(bool(randi()%2))
		if randi() % 2 == 1:
			set_shadow_atlas_size(Autoload.get_randi())
		if randi() % 2 == 1:
			set_shadow_atlas_quadrant_subdiv(Autoload.get_randi(),Autoload.get_randi())
	
		if randi() % 2 == 1:
			set_canvas_transform(Transform2D(Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf())))
		if randi() % 2 == 1:
			set_global_canvas_transform(Transform2D(Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf())))
	
		if randi() % 2 == 1:
			qq += str(find_world())
		if randi() % 2 == 1:
			qq += str(find_world_2d())
	
		if randi() % 2 == 1:
			qq += str(get_camera())
		if randi() % 2 == 1:
			qq += str(get_final_transform())
		if randi() % 2 == 1:
			qq += str(get_modal_stack_top())
		if randi() % 2 == 1:
			qq += str(get_mouse_position())
		if randi() % 2 == 1:
			qq += str(get_render_info(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_size_override())
		if randi() % 2 == 1:
			qq += str(get_texture())
		if randi() % 2 == 1:
			qq += str(get_viewport_rid())
		if randi() % 2 == 1:
			qq += str(get_visible_rect())
	
		if randi() % 2 == 1:
			gui_get_drag_data()
		if randi() % 2 == 1:
			qq += str(gui_has_modal_stack())
		if randi() % 2 == 1:
			qq += str(gui_is_dragging())
	
		if randi() % 2 == 1:
			input(InputEventAction.new())
	
		if randi() % 2 == 1:
			qq += str(is_input_handled())
		if randi() % 2 == 1:
			qq += str(is_size_override_enabled())
		if randi() % 2 == 1:
			qq += str(is_size_override_stretch_enabled())
	
		if randi() % 2 == 1:
			set_attach_to_screen_rect(Rect2(Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf())))
		if randi() % 2 == 1:
			set_input_as_handled()
		if randi() % 2 == 1:
			set_size_override(bool(randi()%2),Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			set_size_override_stretch(bool(randi()%2))
	
		if randi() % 2 == 1:
			unhandled_input(InputEvent.new())
		if randi() % 2 == 1:
			update_worlds()
		# This move mouse and is irritating
		### warp_mouse(Vector2(Autoload.get_randf(),Autoload.get_randf()))
