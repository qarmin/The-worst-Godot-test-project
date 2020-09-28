extends Node

var use_Object: bool = true
var use_Node: bool = true
var use_Node2D: bool = true
var use_CanvasItem: bool = true
var use_CollisionObject2D: bool = true
var use_PhysicsBody2D: bool = true
var use_Joint2D: bool = true
var use_Control: bool = true
var use_BaseButton: bool = true
var use_BoxContainer: bool = true
var use_SplitContainer: bool = true
var use_ScrollBar: bool = true
var use_Range: bool = true
var use_Slider: bool = true
var use_Separator: bool = true
var use_Spatial: bool = true
var use_VisualInstance3D: bool = true
var use_GeometryInstance3D: bool = true
var use_SpriteBase3D: bool = true
var use_CSGShape: bool = true
var use_CSGPrimitive: bool = true
var use_Light: bool = true
var use_CollisionObject: bool = true
var use_PhysicsBody: bool = true
var use_Joint: bool = true


func _ready() -> void:
#	use_Object = false
#	use_Node = false
#	use_Node2D = false
#	use_CanvasItem = false
#	use_CollisionObject2D = false
#	use_PhysicsBody2D = false
#	use_Joint2D = false
#	use_Control = false
#	use_BaseButton = false
#	use_BoxContainer = false
#	use_SplitContainer = false
#	use_ScrollBar = false
#	use_Range = false
#	use_Slider = false
#	use_Separator = false
#	use_Spatial = false
#	use_VisualInstance3D = false
#	use_GeometryInstance3D = false
#	use_SpriteBase3D = false
#	use_CSGShape = false
#	use_CSGPrimitive = false
#	use_Light = false
#	use_CollisionObject = false
#	use_PhysicsBody = false
#	use_Joint = false
	return


func A_Object(q_Object: Object) -> void:
	if ! use_Object:
		return
	var temp_node: Node = Node.new()
	###q_Object._get(Autoload.get_string()))
	###q_Object._get_property_list())
	###q_Object._init()
	###q_Object._notification(Autoload.get_int())
	###q_Object._set(Autoload.get_string(),TextEdit.new()))
	###q_Object._to_string())

#	if randi()%2 == 1: # LEAK? ADD A LOT OF OBJECTS
#		q_Object.add_user_signal(Autoload.get_string())

	###q_Object.call(Autoload.get_string()))
	if Autoload.NOT_A_BUG:
		if randi() % 2 == 1:
			q_Object.call_deferred(Autoload.get_string())
		if randi() % 2 == 1:
			q_Object.callv(Autoload.get_string(), Autoload.get_array())

	if randi() % 2 == 1:
		q_Object.can_translate_messages()
	if Autoload.NOT_A_BUG:
		#if randi()%2 == 1:
		#	q_Object.connect(Autoload.get_string(),Autoload.get_nodes(temp_node),Autoload.get_string(),Autoload.get_array(),Autoload.get_int()) # ConnectFlags
		#if randi()%2 == 1:
		#	q_Object.disconnect(Autoload.get_string(),Autoload.get_nodes(temp_node),Autoload.get_string())
		if randi() % 2 == 1:
			q_Object.emit_signal(Autoload.get_string())
	###free()

	if randi() % 2 == 1:
		q_Object.get(Autoload.get_string())
	if randi() % 2 == 1:
		q_Object.get_class()
	if randi() % 2 == 1:
		q_Object.get_incoming_connections()
	if randi() % 2 == 1:
		q_Object.get_indexed(Autoload.get_string())
	if randi() % 2 == 1:
		q_Object.get_instance_id()
	if randi() % 2 == 1:
		if q_Object.has_meta(Autoload.get_string()):
			q_Object.get_meta(Autoload.get_string())
	if randi() % 2 == 1:
		q_Object.get_meta_list()
	if Autoload.SLOW_FUNCTIONS:
		if randi() % 2 == 1:
			q_Object.get_method_list()
	if randi() % 2 == 1:
		q_Object.get_property_list()
	if randi() % 2 == 1:
		q_Object.get_script()
	if randi() % 2 == 1:
		q_Object.get_signal_connection_list(Autoload.get_string())
	if randi() % 2 == 1:
		q_Object.get_signal_list()

	if randi() % 2 == 1:
		q_Object.has_meta(Autoload.get_string())
	if randi() % 2 == 1:
		q_Object.has_method(Autoload.get_string())
	if randi() % 2 == 1:
		q_Object.has_user_signal(Autoload.get_string())

	if randi() % 2 == 1:
		q_Object.is_blocking_signals()
	if randi() % 2 == 1:
		q_Object.is_class(Autoload.get_string())
#	if  Autoload.NOT_A_BUG:
#		if randi()%2 == 1:
#			q_Object.is_connected(Autoload.get_string(),Autoload.get_nodes(temp_node),Autoload.get_string())
	if randi() % 2 == 1:
		q_Object.is_queued_for_deletion()

#		#Better do not touch this BUG
#		for i in range(2000): #BUG
#			if (i != 10)&&(i != 11)&&(i != 41):
#			notification(i,Autoload.get_bool())
#	if randi()%2 == 1:
#		notification(Autoload.get_int(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_Object.property_list_changed_notify()
	if randi() % 2 == 1:
		q_Object.remove_meta(Autoload.get_string())

	if randi() % 2 == 1:
		q_Object.set(Autoload.get_string(), CubeMesh.new())
	if randi() % 2 == 1:
		q_Object.set_block_signals(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Object.set_deferred(Autoload.get_string(), CubeMesh.new())
	if randi() % 2 == 1:
		q_Object.set_indexed(Autoload.get_string(), CubeMesh.new())
	if randi() % 2 == 1:
		q_Object.set_message_translation(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Object.set_meta(Autoload.get_string(), CubeMesh.new())
#	if randi()%2 == 1: #BUG GH#33780
#		q_Object.set_script(Reference.new())

	if randi() % 2 == 1:
		q_Object.to_string()
	if randi() % 2 == 1:
		q_Object.tr(Autoload.get_string())

	temp_node.queue_free()


func A_Node(q_Node: Node) -> void:
	if ! use_Node:
		return

	if randi() % 2 == 1:
		q_Node.set_pause_mode(Autoload.get_int())
	if randi() % 2 == 1:
		q_Node.set_name(Autoload.get_string())
#	if randi() % 2 == 1: #BUG #GH#40657
#		q_Node.set_filename(Autoload.get_string())
	if randi() % 2 == 1:
		q_Node.set_owner(get_parent())
	if randi() % 2 == 1:
		q_Node.get_multiplayer()
	if randi() % 2 == 1:
		q_Node.set_custom_multiplayer(MultiplayerAPI.new())

		###_exit_tree()
		###_enter_tree()
		###_get_configuration_warning())
		###_input(Autoload.loadA("InputEventAction.tres"))
		###_physics_process(0.0)
		###_process(0.0)
		###_ready()
		###_unhandled_input(Autoload.loadA("InputEventAction.tres"))
		###_unhandled_key_input(InputEventKey.new())

		###add_child(TextureButton.new(),Autoload.get_bool()) # TOO MUCH DANGEROUS IN SUCH BIG PROJECT
		###add_child_below_node(get_child(Autoload.get_int()),get_child(Autoload.get_int()),Autoload.get_bool()) # TOO MUCH DANGEROUS IN SUCH BIG PROJECT
	if randi() % 2 == 1:
		q_Node.add_to_group(Autoload.get_string(), Autoload.get_bool())

	if randi() % 2 == 1:
		q_Node.can_process()
	if randi() % 2 == 1:
		var nooo: Node = q_Node.duplicate(Autoload.get_int())  # DuplicateFlags
		if nooo != null:
			nooo.queue_free()

	if randi() % 2 == 1:
		q_Node.find_node(Autoload.get_string(), Autoload.get_bool(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_Node.find_parent(Autoload.get_string())

	if randi() % 2 == 1:
		q_Node.get_child(Autoload.get_int())
	if randi() % 2 == 1:
		q_Node.get_child_count()
	if randi() % 2 == 1:
		q_Node.get_children()
	if randi() % 2 == 1:
		q_Node.get_groups()
	if randi() % 2 == 1:
		q_Node.get_index()
	if randi() % 2 == 1:
		q_Node.get_network_master()
	if randi() % 2 == 1:
		q_Node.get_node(Autoload.get_nodepath(q_Node))
	if randi() % 2 == 1:
		q_Node.get_node_and_resource(Autoload.get_nodepath(q_Node))
	if randi() % 2 == 1:
		q_Node.get_node_or_null(Autoload.get_nodepath(q_Node))
	if randi() % 2 == 1:
		q_Node.get_parent()
	if randi() % 2 == 1:
		q_Node.get_path()
	if randi() % 2 == 1:
		q_Node.get_path_to(get_parent())
	if randi() % 2 == 1:
		q_Node.get_physics_process_delta_time()
	if randi() % 2 == 1:
		q_Node.get_process_delta_time()
	if randi() % 2 == 1:
		q_Node.get_scene_instance_load_placeholder()
	if randi() % 2 == 1:
		q_Node.get_tree()
	if randi() % 2 == 1:
		q_Node.get_viewport()

	if randi() % 2 == 1:
		q_Node.has_node(Autoload.get_nodepath(q_Node))
	if randi() % 2 == 1:
		q_Node.has_node_and_resource(Autoload.get_nodepath(q_Node))

	if randi() % 2 == 1:
		q_Node.is_a_parent_of(Autoload.get_nodes(q_Node))
	if randi() % 2 == 1:
		q_Node.is_displayed_folded()
	if randi() % 2 == 1:
		q_Node.is_greater_than(get_parent())
	if randi() % 2 == 1:
		q_Node.is_in_group(Autoload.get_string())
	if randi() % 2 == 1:
		q_Node.is_inside_tree()
	if randi() % 2 == 1:
		q_Node.is_network_master()
	if randi() % 2 == 1:
		q_Node.is_physics_processing()
	if randi() % 2 == 1:
		q_Node.is_physics_processing_internal()
	if randi() % 2 == 1:
		q_Node.is_processing()
	if randi() % 2 == 1:
		q_Node.is_processing_input()
	if randi() % 2 == 1:
		q_Node.is_processing_internal()
	if randi() % 2 == 1:
		q_Node.is_processing_unhandled_input()
	if randi() % 2 == 1:
		q_Node.is_processing_unhandled_key_input()

	if randi() % 2 == 1:
		q_Node.move_child(get_child(Autoload.get_int()), Autoload.get_int())

		#This only spam output
		###q_Node.print_stray_nodes()
		###q_Node.print_tree()
		###q_Node.print_tree_pretty()

	if randi() % 2 == 1:
		q_Node.propagate_call(Autoload.get_string(), Autoload.get_array(), Autoload.get_bool())
#	if randi()%2 == 1: #BUG
#		q_Node.propagate_notification(Autoload.get_int())

	###q_Node.queue_free()
	if randi() % 2 == 1:
		q_Node.raise()

		###q_Node.remove_and_skip() ## ?
		###q_Node.remove_child(child_number) TOO DANGEREUS IN THIS COMPLEX PROJECT
	if randi() % 2 == 1:
		q_Node.remove_from_group(Autoload.get_string())

	if randi() % 2 == 1:
		q_Node.replace_by(get_child(Autoload.get_int()), Autoload.get_bool())
	if randi() % 2 == 1:
		q_Node.request_ready()

	if randi() % 2 == 1:
		q_Node.rpc(Autoload.get_string())
	if randi() % 2 == 1:
		q_Node.rpc_config(Autoload.get_string(), Autoload.get_int())
	if randi() % 2 == 1:
		q_Node.rpc_id(Autoload.get_int(), Autoload.get_string())
	if randi() % 2 == 1:
		q_Node.rpc_unreliable(Autoload.get_string())
	if randi() % 2 == 1:
		q_Node.rpc_unreliable_id(Autoload.get_int(), Autoload.get_string())

	if randi() % 2 == 1:
		q_Node.rset(Autoload.get_string(), CubeMesh.new())
	if randi() % 2 == 1:
		q_Node.rset_config(Autoload.get_string(), Autoload.get_int())
	if randi() % 2 == 1:
		q_Node.rset_id(Autoload.get_int(), Autoload.get_string(), CubeMesh.new())
	if randi() % 2 == 1:
		q_Node.rset_unreliable(Autoload.get_string(), CubeMesh.new())
	if randi() % 2 == 1:
		q_Node.rset_unreliable_id(Autoload.get_int(), Autoload.get_string(), CubeMesh.new())

	if randi() % 2 == 1:
		q_Node.set_display_folded(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Node.set_network_master(Autoload.get_int(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_Node.set_physics_process(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Node.set_physics_process_internal(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Node.set_process(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Node.set_process_input(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Node.set_process_internal(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Node.set_process_priority(Autoload.get_int())
	if randi() % 2 == 1:
		q_Node.set_process_unhandled_input(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Node.set_process_unhandled_key_input(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Node.set_scene_instance_load_placeholder(Autoload.get_bool())


func A_Node2D(q_Node2D: Node2D) -> void:
	if ! use_Node2D:
		return

	var node_temp: Node = load("res://RES/Node.tscn").instance()
	add_child(node_temp)

	if randi() % 2 == 1:
		q_Node2D.set_position(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Node2D.set_rotation(Autoload.get_float())
	if randi() % 2 == 1:
		q_Node2D.set_rotation_degrees(Autoload.get_float())
	if randi() % 2 == 1:
		q_Node2D.set_scale(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Node2D.set_transform(Autoload.get_transform2d())
	if randi() % 2 == 1:
		q_Node2D.set_global_position(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Node2D.set_global_rotation(Autoload.get_float())
	if randi() % 2 == 1:
		q_Node2D.set_global_rotation_degrees(Autoload.get_float())
	if randi() % 2 == 1:
		q_Node2D.set_global_scale(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Node2D.set_global_transform(Autoload.get_transform2d())
	if randi() % 2 == 1:
		q_Node2D.set_z_index(Autoload.get_int())
	if randi() % 2 == 1:
		q_Node2D.set_z_as_relative(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Node2D.apply_scale(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Node2D.get_angle_to(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Node2D.get_relative_transform_to_parent(node_temp)
	if randi() % 2 == 1:
		q_Node2D.global_translate(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Node2D.look_at(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Node2D.move_local_x(Autoload.get_float(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_Node2D.move_local_y(Autoload.get_float(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_Node2D.rotate(Autoload.get_float())
	if randi() % 2 == 1:
		q_Node2D.to_global(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Node2D.to_local(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Node2D.translate(Autoload.get_vector2())

	node_temp.queue_free()


func A_CanvasItem(q_CanvasItem: CanvasItem) -> void:
	if ! use_CanvasItem:
		return

	if randi() % 2 == 1:
		q_CanvasItem.set_visible(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CanvasItem.set_modulate(Autoload.get_color())
	if randi() % 2 == 1:
		q_CanvasItem.set_self_modulate(Autoload.get_color())
	if randi() % 2 == 1:
		q_CanvasItem.set_draw_behind_parent(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CanvasItem._set_on_top(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CanvasItem.set_light_mask(Autoload.get_int())
#	if randi()%2 == 1: #MISSING
#		q_CanvasItem.set_material(StandardMaterial3D.new())
	if randi() % 2 == 1:
		q_CanvasItem.set_use_parent_material(Autoload.get_bool())

	if randi() % 2 == 1:
		q_CanvasItem.force_update_transform()

	if randi() % 2 == 1:
		q_CanvasItem.get_canvas()
	if randi() % 2 == 1:
		q_CanvasItem.get_canvas_item()
	if randi() % 2 == 1:
		q_CanvasItem.get_canvas_transform()
	if randi() % 2 == 1:
		q_CanvasItem.get_global_mouse_position()
	if randi() % 2 == 1:
		q_CanvasItem.get_global_transform()
	if randi() % 2 == 1:
		q_CanvasItem.get_global_transform_with_canvas()
	if randi() % 2 == 1:
		q_CanvasItem.get_local_mouse_position()
	if randi() % 2 == 1:
		q_CanvasItem.get_transform()
	if randi() % 2 == 1:
		q_CanvasItem.get_viewport_rect()
	if randi() % 2 == 1:
		q_CanvasItem.get_viewport_transform()
	if randi() % 2 == 1:
		q_CanvasItem.get_world_2d()

	if randi() % 2 == 1:
		q_CanvasItem.hide()

	if randi() % 2 == 1:
		q_CanvasItem.is_local_transform_notification_enabled()
	if randi() % 2 == 1:
		q_CanvasItem.is_set_as_toplevel()
	if randi() % 2 == 1:
		q_CanvasItem.is_transform_notification_enabled()
	if randi() % 2 == 1:
		q_CanvasItem.is_visible_in_tree()

	if randi() % 2 == 1:
		q_CanvasItem.make_canvas_position_local(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_CanvasItem.make_input_local(Autoload.loadA("InputEventAction.tres"))

	if randi() % 2 == 1:
		q_CanvasItem.set_as_toplevel(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CanvasItem.set_notify_local_transform(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CanvasItem.set_notify_transform(Autoload.get_bool())

	if randi() % 2 == 1:
		q_CanvasItem.show()
	if randi() % 2 == 1:
		q_CanvasItem.update()


func A_CollisionObject2D(q_CollisionObject2D: CollisionObject2D) -> void:
	if ! use_CollisionObject2D:
		return

	if randi() % 2 == 1:
		q_CollisionObject2D.set_pickable(Autoload.get_bool())

	###_input_event(get_viewport(), Autoload.loadA("InputEventAction.tres"), Autoload.get_int())

	if randi() % 2 == 1:
		q_CollisionObject2D.create_shape_owner(Autoload.get_nodes(q_CollisionObject2D))

	if randi() % 2 == 1:
		q_CollisionObject2D.get_rid()
	if randi() % 2 == 1:
		q_CollisionObject2D.get_shape_owner_one_way_collision_margin(Autoload.get_int())
	if randi() % 2 == 1:
		q_CollisionObject2D.get_shape_owners()

	if randi() % 2 == 1:
		q_CollisionObject2D.is_shape_owner_disabled(Autoload.get_int())
	if randi() % 2 == 1:
		q_CollisionObject2D.is_shape_owner_one_way_collision_enabled(Autoload.get_int())

	if randi() % 2 == 1:
		q_CollisionObject2D.remove_shape_owner(Autoload.get_int())

	if randi() % 2 == 1:
		q_CollisionObject2D.shape_find_owner(Autoload.get_int())
	if randi() % 2 == 1:
		q_CollisionObject2D.shape_owner_add_shape(Autoload.get_int(), CircleShape2D.new())
	if randi() % 2 == 1:
		q_CollisionObject2D.shape_owner_clear_shapes(Autoload.get_int())
	if randi() % 2 == 1:
		q_CollisionObject2D.shape_owner_get_owner(Autoload.get_int())
	if randi() % 2 == 1:
		q_CollisionObject2D.shape_owner_get_shape(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_CollisionObject2D.shape_owner_get_shape_count(Autoload.get_int())
	if randi() % 2 == 1:
		q_CollisionObject2D.shape_owner_get_shape_index(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_CollisionObject2D.shape_owner_get_transform(Autoload.get_int())
	if randi() % 2 == 1:
		q_CollisionObject2D.shape_owner_remove_shape(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_CollisionObject2D.shape_owner_set_disabled(Autoload.get_int(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_CollisionObject2D.shape_owner_set_one_way_collision(Autoload.get_int(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_CollisionObject2D.shape_owner_set_one_way_collision_margin(Autoload.get_int(), Autoload.get_float())
	if randi() % 2 == 1:
		q_CollisionObject2D.shape_owner_set_transform(Autoload.get_int(), Autoload.get_transform2d())


func A_PhysicsBody2D(q_PhysicsBody2D: PhysicsBody2D) -> void:
	if ! use_PhysicsBody2D:
		return

	if randi() % 2 == 1:
		q_PhysicsBody2D._set_layers(Autoload.get_int())
	if randi() % 2 == 1:
		q_PhysicsBody2D.set_collision_layer(Autoload.get_int())
	if randi() % 2 == 1:
		q_PhysicsBody2D.set_collision_mask(Autoload.get_int())

	if randi() % 2 == 1:
		q_PhysicsBody2D.add_collision_exception_with(Autoload.get_nodes(q_PhysicsBody2D))

	if randi() % 2 == 1:
		q_PhysicsBody2D.get_collision_exceptions()
	if randi() % 2 == 1:
		q_PhysicsBody2D.get_collision_layer_bit(Autoload.get_int())
	if randi() % 2 == 1:
		q_PhysicsBody2D.get_collision_mask_bit(Autoload.get_int())

	if randi() % 2 == 1:
		q_PhysicsBody2D.remove_collision_exception_with(Autoload.get_nodes(q_PhysicsBody2D))

	if randi() % 2 == 1:
		q_PhysicsBody2D.set_collision_layer_bit(Autoload.get_int(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_PhysicsBody2D.set_collision_mask_bit(Autoload.get_int(), Autoload.get_bool())


func A_Joint2D(q_Joint2D: Joint2D) -> void:
	if ! use_Joint2D:
		return

	if randi() % 2 == 1:
		q_Joint2D.set_node_a(Autoload.get_nodepath(q_Joint2D))
	if randi() % 2 == 1:
		q_Joint2D.set_node_b(Autoload.get_nodepath(q_Joint2D))
	if randi() % 2 == 1:
		q_Joint2D.set_bias(Autoload.get_float())
	if randi() % 2 == 1:
		q_Joint2D.set_exclude_nodes_from_collision(Autoload.get_bool())


func A_Control(q_Control: Control) -> void:
	if ! use_Control:
		return

	if randi() % 2 == 1:
		q_Control.set_anchor(Autoload.get_int(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Control.set_margin(Autoload.get_int(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Control.set_h_grow_direction(Autoload.get_int())  #GrowDirection
	if randi() % 2 == 1:
		q_Control.set_v_grow_direction(Autoload.get_int())  #GrowDirection
	if randi() % 2 == 1:
		q_Control._set_position(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Control._set_global_position(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Control._set_size(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Control.set_custom_minimum_size(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Control.set_rotation_degrees(Autoload.get_float())
	if randi() % 2 == 1:
		q_Control.set_scale(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Control.set_pivot_offset(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Control.set_clip_contents(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Control.set_tooltip(Autoload.get_string())
	if randi() % 2 == 1:
		q_Control.set_focus_neighbour(Autoload.get_int(), Autoload.get_nodepath(q_Control))
	if randi() % 2 == 1:
		q_Control.set_focus_next(Autoload.get_nodepath(q_Control))
	if randi() % 2 == 1:
		q_Control.set_focus_previous(Autoload.get_nodepath(q_Control))
	if randi() % 2 == 1:
		q_Control.set_focus_mode(Autoload.get_int())  #FocusMode
	if randi() % 2 == 1:
		q_Control.set_mouse_filter(Autoload.get_int())  #MouseFilter
	if randi() % 2 == 1:
		q_Control.set_default_cursor_shape(Autoload.get_int())  #CursorShape
	if randi() % 2 == 1:
		q_Control.set_h_size_flags(Autoload.get_int())
	if randi() % 2 == 1:
		q_Control.set_v_size_flags(Autoload.get_int())
	if randi() % 2 == 1:
		q_Control.set_stretch_ratio(Autoload.get_float())
	if randi() % 2 == 1:
		q_Control.set_theme(Autoload.loadA("Theme.tres"))

	### q_Control._clips_input())
	### q_Control._get_minimum_size())
	### q_Control._gui_input(Autoload.loadA("InputEventAction.tres"))
	### q_Control._make_custom_tooltip("Aha"))
	### q_Control.can_drop_data(Autoload.get_vector2(), "Hehe"))
	### q_Control.drop_data(Autoload.get_vector2()
	### q_Control.get_drag_data(Autoload.get_vector2())
	### q_Control.has_point(Autoload.get_vector2())

	if randi() % 2 == 1:
		q_Control.accept_event()

#	if randi() % 2 == 1:
#		q_Control.add_color_override(Autoload.get_string(), Autoload.get_color())
#	if randi() % 2 == 1:
#		q_Control.add_constant_override(Autoload.get_string(), Autoload.get_int())
#	if randi() % 2 == 1: #TODO CHECK
#		q_Control.add_font_override(Autoload.get_string(), Autoload.loadA("DynamicFont.tres"))
#	if randi() % 2 == 1:
#		q_Control.add_icon_override(Autoload.get_string(), ImageTexture.new())
#	if randi() % 2 == 1:
#		q_Control.add_shader_override(Autoload.get_string(), Autoload.loadA("VisualShader.tres"))
#	if randi() % 2 == 1:
#		q_Control.add_stylebox_override(Autoload.get_string(), Autoload.loadA("StyleBoxTexture.tres"))

#	if randi() % 2 == 1: #TODO Need Control
#		q_Control.force_drag(Autoload.get_string(), Autoload.get_nodes(q_Control))

#	if randi() % 2 == 1: # TODO CHECK THIS
#		q_Control.get_begin()
#	if randi() % 2 == 1:
#		q_Control.get_color(Autoload.get_string(), Autoload.get_string())
#	if randi() % 2 == 1:
#		q_Control.get_combined_minimum_size()
#	if randi() % 2 == 1:
#		q_Control.get_constant(Autoload.get_string(), Autoload.get_string())
#	if randi() % 2 == 1:
#		q_Control.get_cursor_shape(Autoload.get_vector2())
#	if randi() % 2 == 1:
#		q_Control.get_end()
#	if randi() % 2 == 1:
#		q_Control.get_focus_owner()
#	if randi() % 2 == 1: 
#		q_Control.get_font(Autoload.get_string(), Autoload.get_string())
#	if randi() % 2 == 1:
#		q_Control.get_global_rect()
#	if randi() % 2 == 1:
#		q_Control.get_icon(Autoload.get_string(), Autoload.get_string())
#	if randi() % 2 == 1:
#		q_Control.get_minimum_size()
#	if randi() % 2 == 1:
#		q_Control.get_parent_area_size()
#	if randi() % 2 == 1:
#		q_Control.get_parent_control()
#	if randi() % 2 == 1:
#		q_Control.get_rect()
#	if randi() % 2 == 1:
#		q_Control.get_rotation()
#	if randi() % 2 == 1:
#		q_Control.get_stylebox(Autoload.get_string(), Autoload.get_string())
#	if randi() % 2 == 1:
#		q_Control.get_tooltip(Autoload.get_vector2())
#
#	if randi() % 2 == 1:
#		q_Control.grab_click_focus()
#	if randi() % 2 == 1:
#		q_Control.grab_focus()
#
#	if randi() % 2 == 1:
#		q_Control.has_color(Autoload.get_string(), Autoload.get_string())
#	if randi() % 2 == 1:
#		q_Control.has_color_override(Autoload.get_string())
#	if randi() % 2 == 1:
#		q_Control.has_constant(Autoload.get_string(), Autoload.get_string())
#	if randi() % 2 == 1:
#		q_Control.has_constant_override(Autoload.get_string())
#	if randi() % 2 == 1:
#		q_Control.has_focus()
#	if randi() % 2 == 1:
#		q_Control.has_font(Autoload.get_string(),Autoload.get_string())
#	if randi() % 2 == 1:
#		q_Control.has_font_override(Autoload.get_string())
#	if randi() % 2 == 1:
#		q_Control.has_icon(Autoload.get_string(), Autoload.get_string())
#	if randi() % 2 == 1:
#		q_Control.has_icon_override(Autoload.get_string())
#	if randi() % 2 == 1:
#		q_Control.has_shader_override(Autoload.get_string())
#	if randi() % 2 == 1:
#		q_Control.has_stylebox(Autoload.get_string(), Autoload.get_string())
#	if randi() % 2 == 1:
#		q_Control.has_stylebox_override(Autoload.get_string())
#
#	if randi() % 2 == 1:
#		q_Control.minimum_size_changed()
#	if randi() % 2 == 1:
#		q_Control.release_focus()
#
#	if randi() % 2 == 1:
#		q_Control.set_anchor(Autoload.get_int(), Autoload.get_float(), Autoload.get_bool(), Autoload.get_bool()) #MARGIN
#	if randi() % 2 == 1:
#		q_Control.set_anchor_and_margin(Autoload.get_int(), Autoload.get_float(), Autoload.get_float(), Autoload.get_bool()) # MARGIN
#	if randi() % 2 == 1:
#		q_Control.set_anchors_and_margins_preset(Autoload.get_int(), Autoload.get_int(), Autoload.get_int()) # LayoutPreset, LayoutPresetMode
#	if randi() % 2 == 1:
#		q_Control.set_anchors_preset(Autoload.get_int(), Autoload.get_bool())# LayoutPreset
#	if randi() % 2 == 1:
#		q_Control.set_begin(Autoload.get_vector2())
#	if randi() % 2 == 1:
#		q_Control.set_drag_forwarding(q_Control)
#	if randi() % 2 == 1:
#		q_Control.set_drag_preview(q_Control)
#	if randi() % 2 == 1:
#		q_Control.set_end(Autoload.get_vector2())
#	if randi() % 2 == 1:
#		q_Control.set_global_position(Autoload.get_vector2(), Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_Control.set_margins_preset(Autoload.get_int(), Autoload.get_int(), Autoload.get_int()) # LayoutPreset, LayoutPresetMode
#	if randi() % 2 == 1:
#		q_Control.set_position(Autoload.get_vector2(), Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_Control.set_rotation(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_Control.set_size(Autoload.get_vector2(), Autoload.get_bool())
#
#	if randi() % 2 == 1:
#		q_Control.show_modal(Autoload.get_bool())
	### q_Control.warp_mouse(Autoload.get_vector2()) #JUST NO!!!
	pass


func A_BaseButton(q_BaseButton: BaseButton) -> void:
	if ! use_BaseButton:
		return

	if randi() % 2 == 1:
		q_BaseButton.set_disabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_BaseButton.set_toggle_mode(Autoload.get_bool())
	if randi() % 2 == 1:
		q_BaseButton.set_Shortcut_in_tooltip(Autoload.get_bool())
	if randi() % 2 == 1:
		q_BaseButton.set_pressed(Autoload.get_bool())
	if randi() % 2 == 1:
		q_BaseButton.set_action_mode(Autoload.get_int())  #ActionMODE
	if randi() % 2 == 1:
		q_BaseButton.set_button_mask(Autoload.get_int())
	if randi() % 2 == 1:
		q_BaseButton.set_enabled_focus_mode(Autoload.get_int())  #FocusMode
	if randi() % 2 == 1:
		q_BaseButton.set_keep_pressed_outside(Autoload.get_bool())
	if randi() % 2 == 1:
		q_BaseButton.set_Shortcut(Shortcut.new())
	if randi() % 2 == 1:
		q_BaseButton.set_button_group(ButtonGroup.new())

	#q_BaseButton._pressed()
	#q_BaseButton._toggled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_BaseButton.get_draw_mode()
	if randi() % 2 == 1:
		q_BaseButton.is_hovered()


func A_BoxContainer(q_BoxContainer: BoxContainer) -> void:
	if ! use_BoxContainer:
		return

	if randi() % 2 == 1:
		q_BoxContainer.set_alignment(Autoload.get_int())  # alignmode
#LEAK
#			q_BoxContainer.add_spacer(Autoload.get_bool())
	pass


func A_SplitContainer(q_SplitContainer: SplitContainer) -> void:
	if ! use_SplitContainer:
		return

	q_SplitContainer.set_split_offset(Autoload.get_int())
	q_SplitContainer.set_collapsed(Autoload.get_bool())
	q_SplitContainer.set_dragger_visibility(Autoload.get_int())
	q_SplitContainer.clamp_split_offset()


func A_ScrollBar(q_ScrollBar: ScrollBar) -> void:
	if ! use_ScrollBar:
		return

	q_ScrollBar.set_custom_step(Autoload.get_float())


func A_Range(q_Range: Range) -> void:
	if ! use_Range:
		return

	if randi() % 2 == 1:
		q_Range.set_min(Autoload.get_float())
	if randi() % 2 == 1:
		q_Range.set_max(Autoload.get_float())
	if randi() % 2 == 1:
		q_Range.set_step(Autoload.get_float())
	if randi() % 2 == 1:
		q_Range.set_page(Autoload.get_float())
	if randi() % 2 == 1:
		q_Range.set_value(Autoload.get_float())
	if randi() % 2 == 1:
		q_Range.set_as_ratio(Autoload.get_float())
	if randi() % 2 == 1:
		q_Range.set_exp_ratio(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Range.set_use_rounded_values(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Range.set_allow_greater(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Range.set_allow_lesser(Autoload.get_bool())

	if randi() % 2 == 1:
		q_Range.share(Autoload.get_nodes(q_Range))
	if randi() % 2 == 1:
		q_Range.unshare()


func A_Slider(q_Slider: Slider) -> void:
	if ! use_Slider:
		return

	if randi() % 2 == 1:
		q_Slider.set_editable(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Slider.set_scrollable(Autoload.get_bool())
	if Autoload.SLOW_FUNCTIONS:
		if randi() % 2 == 1:
			q_Slider.set_ticks(Autoload.get_int())
	if randi() % 2 == 1:
		q_Slider.set_ticks_on_borders(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Slider.set_focus_mode(Autoload.get_int())


func A_Separator(q_Separator: Separator) -> void:  #ITS EMPTY
	if ! use_Separator:
		return


func A_Node3D(q_Node3D: Node3D) -> void:
	if ! use_Spatial:
		return

	if randi() % 2 == 1:
		q_Node3D.set_global_transform(Autoload.get_transform())
	if randi() % 2 == 1:
		q_Node3D.set_translation(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Node3D.set_rotation_degrees(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Node3D.set_rotation(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Node3D.set_scale(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Node3D.set_transform(Autoload.get_transform())
	if randi() % 2 == 1:
		q_Node3D.set_visible(Autoload.get_bool())
#	if randi() % 2 == 1: #SPATIAL GIZMO AND CHILD ARE NOT INSTANTIABLE
#		q_Node3D.set_gizmo(SpatialGizmo.new())

	if randi() % 2 == 1:
		q_Node3D.force_update_transform()

	if randi() % 2 == 1:
		q_Node3D.get_parent_spatial()
	if randi() % 2 == 1:
		q_Node3D.get_world_3d()

	if randi() % 2 == 1:
		q_Node3D.global_rotate(Autoload.get_vector3(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Node3D.global_scale(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Node3D.global_translate(Autoload.get_vector3())

	if randi() % 2 == 1:
		q_Node3D.hide()

	if randi() % 2 == 1:
		q_Node3D.is_local_transform_notification_enabled()
	if randi() % 2 == 1:
		q_Node3D.is_scale_disabled()
	if randi() % 2 == 1:
		q_Node3D.is_set_as_toplevel()
	if randi() % 2 == 1:
		q_Node3D.is_transform_notification_enabled()
	if randi() % 2 == 1:
		q_Node3D.is_visible_in_tree()

	if randi() % 2 == 1:
		q_Node3D.look_at(
			Vector3(Autoload.get_float() + 4, Autoload.get_float() + 45, Autoload.get_float() + 215), Vector3(Autoload.get_float() + 4, Autoload.get_float() + 45, Autoload.get_float() + 215)
		)
	if randi() % 2 == 1:
		q_Node3D.look_at_from_position(
			Vector3(Autoload.get_float() + 4, Autoload.get_float() + 45, Autoload.get_float() + 215),
			Vector3(Autoload.get_float() + 4, Autoload.get_float() + 45, Autoload.get_float() + 215),
			Vector3(Autoload.get_float() + 4, Autoload.get_float() + 45, Autoload.get_float() + 215)
		)

	if randi() % 2 == 1:
		q_Node3D.orthonormalize()

	if randi() % 2 == 1:
		q_Node3D.rotate(Vector3(Autoload.get_float() + 150, Autoload.get_float() + 100, Autoload.get_float() + 15), Autoload.get_float() + 10)
	if randi() % 2 == 1:
		q_Node3D.rotate_object_local(Vector3(Autoload.get_float() + 4, Autoload.get_float() + 45, Autoload.get_float() + 215), Autoload.get_float())
	if randi() % 2 == 1:
		q_Node3D.rotate_x(Autoload.get_float())
	if randi() % 2 == 1:
		q_Node3D.rotate_y(Autoload.get_float())
	if randi() % 2 == 1:
		q_Node3D.rotate_z(Autoload.get_float())

	if randi() % 2 == 1:
		q_Node3D.scale_object_local(Autoload.get_vector3())

	if randi() % 2 == 1:
		q_Node3D.set_as_toplevel(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Node3D.set_disable_scale(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Node3D.set_identity()
	if randi() % 2 == 1:
		q_Node3D.set_ignore_transform_notification(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Node3D.set_notify_local_transform(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Node3D.set_notify_transform(Autoload.get_bool())

	if randi() % 2 == 1:
		q_Node3D.show()

	if randi() % 2 == 1:
		q_Node3D.to_global(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Node3D.to_local(Autoload.get_vector3())

	if randi() % 2 == 1:
		q_Node3D.translate(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Node3D.translate_object_local(Autoload.get_vector3())

	if randi() % 2 == 1:
		q_Node3D.update_gizmo()


func A_VisualInstance3D(q_VisualInstance3D: VisualInstance3D) -> void:
	if ! use_VisualInstance3D:
		return

	if randi() % 2 == 1:
		q_VisualInstance3D.set_layer_mask(Autoload.get_int())
	if randi() % 2 == 1:
		q_VisualInstance3D.get_aabb()
	if randi() % 2 == 1:
		q_VisualInstance3D.get_base()
	if randi() % 2 == 1:
		q_VisualInstance3D.get_instance()
	if randi() % 2 == 1:
		q_VisualInstance3D.get_layer_mask_bit(Autoload.get_int())
	if randi() % 2 == 1:
		q_VisualInstance3D.get_transformed_aabb()
	if randi() % 2 == 1:
		q_VisualInstance3D.set_base(RID())
	if randi() % 2 == 1:
		q_VisualInstance3D.set_layer_mask_bit(Autoload.get_int(), Autoload.get_bool())


func A_GeometryInstance3D(q_GeometryInstance3D: GeometryInstance3D) -> void:
	if ! use_GeometryInstance3D:
		return

#	if randi() % 2 == 1: MISSING
#		q_GeometryInstance3D.set_material_override(StandardMaterial3D.new())
	if randi() % 2 == 1:
		q_GeometryInstance3D.set_cast_shadows_setting(Autoload.get_int())
	if randi() % 2 == 1:
		q_GeometryInstance3D.set_extra_cull_margin(Autoload.get_float())

#	if randi() % 2 == 1: #MISSING
#		q_GeometryInstance3D.set_flag(Autoload.get_int(),Autoload.get_bool())

	if randi() % 2 == 1:
		q_GeometryInstance3D.set_lod_min_distance(Autoload.get_float())
	if randi() % 2 == 1:
		q_GeometryInstance3D.set_lod_min_hysteresis(Autoload.get_float())
	if randi() % 2 == 1:
		q_GeometryInstance3D.set_lod_max_distance(Autoload.get_float())
	if randi() % 2 == 1:
		q_GeometryInstance3D.set_lod_max_hysteresis(Autoload.get_float())
	if randi() % 2 == 1:
		q_GeometryInstance3D.set_custom_aabb(Autoload.get_aabb())


func A_SpriteBase3D(q_SpriteBase3D: SpriteBase3D) -> void:
	if ! use_SpriteBase3D:
		return


func A_CSGShape3D(q_CSGShape3D: CSGShape3D) -> void:
	if ! use_CSGShape:
		return

	if randi() % 2 == 1:
		q_CSGShape3D.set_operation(Autoload.get_int())  # OPERATION
	if randi() % 2 == 1:
		q_CSGShape3D.set_snap(Autoload.get_float())
#	if randi() % 2 == 1: # BUG CRASH GH#40506
#		q_CSGShape3D.set_calculate_tangents(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CSGShape3D.set_use_collision(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CSGShape3D.set_collision_layer(Autoload.get_int())
	if randi() % 2 == 1:
		q_CSGShape3D.set_collision_mask(Autoload.get_int())

	if randi() % 2 == 1:
		q_CSGShape3D.get_collision_layer_bit(Autoload.get_int())
	if randi() % 2 == 1:
		q_CSGShape3D.get_collision_mask_bit(Autoload.get_int())
	if randi() % 2 == 1:
		q_CSGShape3D.get_meshes()

	if randi() % 2 == 1:
		q_CSGShape3D.is_root_shape()

	if randi() % 2 == 1:
		q_CSGShape3D.set_collision_layer_bit(Autoload.get_int(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_CSGShape3D.set_collision_mask_bit(Autoload.get_int(), Autoload.get_bool())


func A_CSGPrimitive3D(q_CSGPrimitive3D: CSGPrimitive3D) -> void:
	if ! use_CSGPrimitive:
		return

	if randi() % 2 == 1:
		q_CSGPrimitive3D.set_invert_faces(Autoload.get_bool())


func A_Light3D(A_Light3D: Light3D) -> void:
	if ! use_Light:
		return

	if randi() % 2 == 1:
		A_Light3D.set_color(Autoload.get_color())

	if randi() % 2 == 1:
		A_Light3D.set("light_energy", Autoload.get_float())
	if randi() % 2 == 1:
		A_Light3D.set("light_indirect_energy", Autoload.get_float())
	if randi() % 2 == 1:
		A_Light3D.set_negative(Autoload.get_bool())
	if randi() % 2 == 1:
		A_Light3D.set("light_specular", Autoload.get_float())
	if randi() % 2 == 1:
		A_Light3D.set_bake_mode(Autoload.get_int())  # BakeMode
	if randi() % 2 == 1:
		A_Light3D.set_cull_mask(Autoload.get_int())
	if randi() % 2 == 1:
		A_Light3D.set_shadow(Autoload.get_bool())
	if randi() % 2 == 1:
		A_Light3D.set_shadow_color(Autoload.get_color())
	if randi() % 2 == 1:
		A_Light3D.set("shadow_bias", Autoload.get_float())
	if randi() % 2 == 1:
		A_Light3D.set("shadow_contact", Autoload.get_float())
	if randi() % 2 == 1:
		A_Light3D.set_shadow_reverse_cull_face(Autoload.get_bool())
	if randi() % 2 == 1:
		A_Light3D.set_editor_only(Autoload.get_bool())


func A_CollisionObject3D(q_CollisionObject: CollisionObject3D) -> void:
	if ! use_CollisionObject:
		return

	if randi() % 2 == 1:
		q_CollisionObject.set_ray_pickable(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CollisionObject.set_capture_input_on_drag(Autoload.get_bool())

		###q_CollisionObject._input_event(get_parent().find_node(Autoload.get_string()), Autoload.loadA("InputEventAction.tres"), Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_int())

	if randi() % 2 == 1:
		q_CollisionObject.create_shape_owner(self)

	if randi() % 2 == 1:
		q_CollisionObject.get_rid()
	if randi() % 2 == 1:
		q_CollisionObject.get_shape_owners()

	if randi() % 2 == 1:
		q_CollisionObject.is_shape_owner_disabled(Autoload.get_int())
	if randi() % 2 == 1:
		q_CollisionObject.remove_shape_owner(Autoload.get_int())

	if randi() % 2 == 1:
		q_CollisionObject.shape_find_owner(Autoload.get_int())
	if randi() % 2 == 1:
		q_CollisionObject.shape_owner_add_shape(Autoload.get_int(), BoxShape3D.new())
	if randi() % 2 == 1:
		q_CollisionObject.shape_owner_clear_shapes(Autoload.get_int())
	if randi() % 2 == 1:
		q_CollisionObject.shape_owner_get_owner(Autoload.get_int())
	if randi() % 2 == 1:
		q_CollisionObject.shape_owner_get_shape(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_CollisionObject.shape_owner_get_shape_count(Autoload.get_int())
	if randi() % 2 == 1:
		q_CollisionObject.shape_owner_get_shape_index(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_CollisionObject.shape_owner_get_transform(Autoload.get_int())
	if randi() % 2 == 1:
		q_CollisionObject.shape_owner_remove_shape(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_CollisionObject.shape_owner_set_disabled(Autoload.get_int(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_CollisionObject.shape_owner_set_transform(Autoload.get_int(), Autoload.get_transform())


func A_PhysicsBody3D(q_PhysicsBody3D: PhysicsBody3D) -> void:
	if ! use_PhysicsBody:
		return
	if randi() % 2 == 1:
		q_PhysicsBody3D.set_collision_layer(Autoload.get_int())
	if randi() % 2 == 1:
		q_PhysicsBody3D.set_collision_mask(Autoload.get_int())

	if randi() % 2 == 1:
		q_PhysicsBody3D.add_collision_exception_with(q_PhysicsBody3D)

	if randi() % 2 == 1:
		q_PhysicsBody3D.get_collision_exceptions()
	if randi() % 2 == 1:
		q_PhysicsBody3D.get_collision_layer_bit(Autoload.get_int())
	if randi() % 2 == 1:
		q_PhysicsBody3D.get_collision_mask_bit(Autoload.get_int())

	if randi() % 2 == 1:
		q_PhysicsBody3D.remove_collision_exception_with(q_PhysicsBody3D)

	if randi() % 2 == 1:
		q_PhysicsBody3D.set_collision_layer_bit(Autoload.get_int(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_PhysicsBody3D.set_collision_mask_bit(Autoload.get_int(), Autoload.get_bool())


func A_Joint3D(q_Joint3D: Joint3D) -> void:
	if ! use_Joint:
		return

	if randi() % 2 == 1:
		q_Joint3D.set_node_a(Autoload.get_string())
	if randi() % 2 == 1:
		q_Joint3D.set_node_b(Autoload.get_string())
	if randi() % 2 == 1:
		q_Joint3D.set_solver_priority(Autoload.get_int())
	if randi() % 2 == 1:
		q_Joint3D.set_exclude_nodes_from_collision(Autoload.get_bool())
