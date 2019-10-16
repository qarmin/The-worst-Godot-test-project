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
			set_use_arvr(Autoload.get_bool())
		if randi() % 2 == 1:
			set_size(Autoload.get_vector2())
		if randi() % 2 == 1:
			set_use_own_world(Autoload.get_bool())
		if randi() % 2 == 1:
			set_world(World.new())
		if randi() % 2 == 1:
			set_world_2d(World2D.new())
		if randi() % 2 == 1:
			set_transparent_background(Autoload.get_bool())
		if randi() % 2 == 1:
			set_handle_input_locally(Autoload.get_bool())
		if randi() % 2 == 1:
			set_msaa(Autoload.get_int()) # MSAA
		if randi() % 2 == 1:
			set_hdr(Autoload.get_bool())
		if randi() % 2 == 1:
			set_disable_3d(Autoload.get_bool())
		if randi() % 2 == 1:
			set_keep_3d_linear(Autoload.get_bool())
		if randi() % 2 == 1:
			set_usage(Autoload.get_int()) # Usage
		if randi() % 2 == 1:
			set_use_render_direct_to_screen(Autoload.get_bool())
		if randi() % 2 == 1:
			set_debug_draw(Autoload.get_int()) #DebugDraw
		if randi() % 2 == 1:
			set_vflip(Autoload.get_bool())
		if randi() % 2 == 1:
			set_clear_mode(Autoload.get_int()) #ClearMode
		if randi() % 2 == 1:
			set_update_mode(Autoload.get_int()) #UpdateMode
		if randi() % 2 == 1:
			set_as_audio_listener_2d(Autoload.get_bool())
		if randi() % 2 == 1:
			set_as_audio_listener(Autoload.get_bool())
		if randi() % 2 == 1:
			set_physics_object_picking(Autoload.get_bool())
		if randi() % 2 == 1:
			set_disable_input(Autoload.get_bool())
		if randi() % 2 == 1:
			set_snap_controls_to_pixels(Autoload.get_bool())
		if randi() % 2 == 1:
			set_shadow_atlas_size(Autoload.get_int())
		if randi() % 2 == 1:
			set_shadow_atlas_quadrant_subdiv(Autoload.get_int(),Autoload.get_int())
	
		if randi() % 2 == 1:
			set_canvas_transform(Autoload.get_transform2d())
		if randi() % 2 == 1:
			set_global_canvas_transform(Autoload.get_transform2d())
	
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
			qq += str(get_render_info(Autoload.get_int()))
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
			input(Autoload.loadA("InputEventAction.tres"))
	
		if randi() % 2 == 1:
			qq += str(is_input_handled())
		if randi() % 2 == 1:
			qq += str(is_size_override_enabled())
		if randi() % 2 == 1:
			qq += str(is_size_override_stretch_enabled())
	
		if randi() % 2 == 1:
			set_attach_to_screen_rect(Autoload.get_rect2())
		if randi() % 2 == 1:
			set_input_as_handled()
		if randi() % 2 == 1:
			set_size_override(Autoload.get_bool(),Autoload.get_vector2(),Autoload.get_vector2())
		if randi() % 2 == 1:
			set_size_override_stretch(Autoload.get_bool())
	
		if randi() % 2 == 1:
			unhandled_input(Autoload.loadA("InputEventAction.tres"))
		if Autoload.SLOW_FUNCTIONS:
			if randi() % 2 == 1:
				update_worlds()
		# This move mouse and is irritating
		### warp_mouse(Autoload.get_vector2())
