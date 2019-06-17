extends Viewport

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq

	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

		set_use_arvr(bool(randi()%2))
		set_size(Vector2(randf() * 50,randf() * 50))
		set_use_own_world(bool(randi()%2))
		#BUG set_world(World.new())
		#BUG set_world_2d(World2D.new())
		set_transparent_background(bool(randi()%2))
		set_handle_input_locally(bool(randi()%2))
		set_msaa(randi() % 5) # MSAA
		set_hdr(bool(randi()%2))
		set_disable_3d(bool(randi()%2))
		set_keep_3d_linear(bool(randi()%2))
		set_usage(randi() % 4) # Usage
		set_use_render_direct_to_screen(bool(randi()%2))
		set_debug_draw(randi() % 4) #DebugDraw
		set_vflip(bool(randi()%2))
		set_clear_mode(randi() % 3) #ClearMode
		set_update_mode(randi() % 4) #UpdateMode
		set_as_audio_listener_2d(bool(randi()%2))
		set_as_audio_listener(bool(randi()%2))
		set_physics_object_picking(bool(randi()%2))
		set_disable_input(bool(randi()%2))
		set_snap_controls_to_pixels(bool(randi()%2))
		set_shadow_atlas_size(randi()%50)
		for i in range(4):
			set_shadow_atlas_quadrant_subdiv(i,randi()% SHADOW_ATLAS_QUADRANT_SUBDIV_MAX)

		set_canvas_transform(Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		set_global_canvas_transform(Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))

		qq += str(find_world())
		qq += str(find_world_2d())

		qq += str(get_camera())
		qq += str(get_final_transform())
		qq += str(get_modal_stack_top())
		#qq += str(get_mouse_position())
		qq += str(get_render_info(randi() % RENDER_INFO_MAX))
		qq += str(get_size_override())
		qq += str(get_texture())
		qq += str(get_viewport_rid())
		qq += str(get_visible_rect())

		gui_get_drag_data()
		qq += str(gui_has_modal_stack())
		qq += str(gui_is_dragging())

		#BUG input(InputEvent.new())

		qq += str(is_input_handled())
		qq += str(is_size_override_enabled())
		qq += str(is_size_override_stretch_enabled())

		#set_attach_to_screen_rect(Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		set_input_as_handled()
		#set_size_override(bool(randi()%2),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50))
		set_size_override_stretch(bool(randi()%2))

		#unhandled_input(InputEvent.new())
		update_worlds()
		# This move mouse and is irritating
		#warp_mouse(Vector2(randf() * 50,randf() * 50))
		
		if Autoload.WRONG_BUGS:
			set_use_arvr(bool(randi()%2))
			set_size(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
			set_use_own_world(bool(randi()%2))
			#BUG set_world(World.new())
			#BUG set_world_2d(World2D.new())
			set_transparent_background(bool(randi()%2))
			set_handle_input_locally(bool(randi()%2))
			set_msaa(randi() % 1000 - 500) # MSAA
			set_hdr(bool(randi()%2))
			set_disable_3d(bool(randi()%2))
			set_keep_3d_linear(bool(randi()%2))
			set_usage(randi() % 1000 - 500) # Usage
			set_use_render_direct_to_screen(bool(randi()%2))
			set_debug_draw(randi() % 1000 - 500) #DebugDraw
			set_vflip(bool(randi()%2))
			set_clear_mode(randi() % 1000 - 500) #ClearMode
			set_update_mode(randi() % 1000 - 500) #UpdateMode
			set_as_audio_listener_2d(bool(randi()%2))
			set_as_audio_listener(bool(randi()%2))
			set_physics_object_picking(bool(randi()%2))
			set_disable_input(bool(randi()%2))
			set_snap_controls_to_pixels(bool(randi()%2))
			set_shadow_atlas_size(randi() % 1000 - 500)
			for i in range(4):
				set_shadow_atlas_quadrant_subdiv(i,randi() % 1000 - 500)
	
			set_canvas_transform(Transform2D(Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
			set_global_canvas_transform(Transform2D(Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
	
			qq += str(find_world())
			qq += str(find_world_2d())
	
			qq += str(get_camera())
			qq += str(get_final_transform())
			qq += str(get_modal_stack_top())
			qq += str(get_mouse_position())
			qq += str(get_render_info(randi() % 1000 - 500))
			qq += str(get_size_override())
			qq += str(get_texture())
			qq += str(get_viewport_rid())
			qq += str(get_visible_rect())
	
			gui_get_drag_data()
			qq += str(gui_has_modal_stack())
			qq += str(gui_is_dragging())
	
			#BUG input(InputEvent.new())
	
			qq += str(is_input_handled())
			qq += str(is_size_override_enabled())
			qq += str(is_size_override_stretch_enabled())
	
			set_attach_to_screen_rect(Rect2(Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
			set_input_as_handled()
			set_size_override(bool(randi()%2),Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
			set_size_override_stretch(bool(randi()%2))
	
			unhandled_input(InputEvent.new())
			update_worlds()
			# This move mouse and is irritating
			#warp_mouse(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
