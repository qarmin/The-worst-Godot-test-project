extends Node
#Viewport

#onready var counter : float = Autoload.get_rand_time()
#
#func alt_process(delta) -> void:
#	counter -= delta
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#		nodeFunction(self,true)
#
#func nodeFunction(q_Viewport : Viewport, can_reset : bool = false) -> void:
#
#	if randi() % 2 == 1:
#		AutoObjects.A_Object(q_Viewport)
#		AutoObjects.A_Node(q_Viewport)
#
#
#	### START TEMP
#	var temp_World2D : World2D = World2D.new()
##?#	AutoResourcesWorld2D.nodeFunction(temp_World2D)
#
#	var temp_World3D : World3D = World3D.new()
##?#	AutoResourcesWorld.nodeFunction(temp_World)
#
#	var temp_InputEventAction : InputEventAction = InputEventAction.new()
##?#	AutoResourcesInputEventAction.nodeFunction(temp_InputEventAction)
#	### END TEMP

#	if randi() % 2 == 1: #MISSING
#		q_Viewport.set_use_arvr(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_Viewport.set_size(Autoload.get_vector2())
#	if randi() % 2 == 1:
#		q_Viewport.set_use_own_world(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_Viewport.set_world(temp_World)
#	if randi() % 2 == 1:
#		q_Viewport.set_world_2d(temp_World2D)
#	if randi() % 2 == 1:
#		q_Viewport.set_transparent_background(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_Viewport.set_handle_input_locally(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_Viewport.set_msaa(Autoload.get_int()) # MSAA
##	if randi() % 2 == 1:
##		q_Viewport.set_hdr(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_Viewport.set_disable_3d(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_Viewport.set_keep_3d_linear(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_Viewport.set_usage(Autoload.get_int()) # Usage
#	if randi() % 2 == 1:
#		q_Viewport.set_use_render_direct_to_screen(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_Viewport.set_debug_draw(Autoload.get_int()) #DebugDraw
#	if randi() % 2 == 1:
#		q_Viewport.set_vflip(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_Viewport.set_clear_mode(Autoload.get_int()) #ClearMode
#	if randi() % 2 == 1:
#		q_Viewport.set_update_mode(Autoload.get_int()) #UpdateMode
#	if randi() % 2 == 1:
#		q_Viewport.set_as_audio_listener_2d(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_Viewport.set_as_audio_listener(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_Viewport.set_physics_object_picking(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_Viewport.set_disable_input(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_Viewport.set_snap_controls_to_pixels(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_Viewport.set_shadow_atlas_size(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_Viewport.set_shadow_atlas_quadrant_subdiv(Autoload.get_int(),Autoload.get_int())
#
#	if randi() % 2 == 1:
#		q_Viewport.set_canvas_transform(Autoload.get_transform2d())
#	if randi() % 2 == 1:
#		q_Viewport.set_global_canvas_transform(Autoload.get_transform2d())
#
#	if randi() % 2 == 1:
#		q_Viewport.find_world()
#	if randi() % 2 == 1:
#		q_Viewport.find_world_2d()
#
#	if randi() % 2 == 1:
#		q_Viewport.get_camera()
#	if randi() % 2 == 1:
#		q_Viewport.get_final_transform()
#	if randi() % 2 == 1:
#		q_Viewport.get_modal_stack_top()
#	if randi() % 2 == 1:
#		q_Viewport.get_mouse_position()
#	if randi() % 2 == 1:
#		q_Viewport.get_render_info(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_Viewport.get_size_override()
#	if randi() % 2 == 1:
#		q_Viewport.get_texture()
#	if randi() % 2 == 1:
#		q_Viewport.get_viewport_rid()
#	if randi() % 2 == 1:
#		q_Viewport.get_visible_rect()
#
#	if randi() % 2 == 1:
#		q_Viewport.gui_get_drag_data()
#	if randi() % 2 == 1:
#		q_Viewport.gui_has_modal_stack()
#	if randi() % 2 == 1:
#		q_Viewport.gui_is_dragging()
#
#	if randi() % 2 == 1:
#		input(temp_InputEventAction)
#
#	if randi() % 2 == 1:
#		q_Viewport.is_input_handled()
#	if randi() % 2 == 1:
#		q_Viewport.is_size_override_enabled()
#	if randi() % 2 == 1:
#		q_Viewport.is_size_override_stretch_enabled()
#
#	if randi() % 2 == 1:
#		q_Viewport.set_attach_to_screen_rect(Autoload.get_rect2())
#	if randi() % 2 == 1:
#		q_Viewport.set_input_as_handled()
#	if randi() % 2 == 1:
#		q_Viewport.set_size_override(Autoload.get_bool(),Autoload.get_vector2(),Autoload.get_vector2())
#	if randi() % 2 == 1:
#		q_Viewport.set_size_override_stretch(Autoload.get_bool())
#
#	if randi() % 2 == 1:
#		q_Viewport.unhandled_input(temp_InputEventAction)
#	if Autoload.SLOW_FUNCTIONS:
#		if randi() % 2 == 1:
#			q_Viewport.update_worlds()
#	# This move mouse and is irritating
#	### warp_mouse(Autoload.get_vector2())
