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
		set_world(World.new())
		set_world_2d(World2D.new())
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
		
		find_world()
		find_world_2d()
		
		get_camera()
		get_final_transform()
		get_modal_stack_top()
		get_mouse_position()
		get_render_info(randi() % RENDER_INFO_MAX)
		get_size_override()
		get_texture()
		get_viewport_rid()
		get_visible_rect()
		
		gui_get_drag_data()
		gui_has_modal_stack()
		gui_is_dragging()
		
		#input(InputEvent.new())
		
		is_input_handled()
		is_size_override_enabled()
		is_size_override_stretch_enabled()
		
		set_attach_to_screen_rect(Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		set_input_as_handled()
		set_size_override(bool(randi()%2),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50))
		set_size_override_stretch(bool(randi()%2))
		
		unhandled_input(InputEvent.new())
		update_worlds()
		warp_mouse(Vector2(randf() * 50,randf() * 50))
		
		
		
		
		
		
		
		
