extends Node

func A_Object(q_Object : Object) -> void:
	###Autoload.qq = str(q_Object._get(Autoload.get_string()))
	###Autoload.qq = str(q_Object._get_property_list())
	###q_Object._init()
	###q_Object._notification(Autoload.get_int())
	###Autoload.qq = str(q_Object._set(Autoload.get_string(),TextEdit.new()))
	###Autoload.qq = str(q_Object._to_string())

	q_Object.add_user_signal(Autoload.get_string())

	###Autoload.qq = str(q_Object.call(Autoload.get_string()))
	Autoload.qq = str(q_Object.call_deferred(Autoload.get_string()))
	Autoload.qq = str(q_Object.callv(Autoload.get_string(),Autoload.get_array()))

	Autoload.qq = str(q_Object.can_translate_messages())
	Autoload.qq = str(q_Object.connect(Autoload.get_string(),self,Autoload.get_string(),Autoload.get_array(),Autoload.get_int())) # ConnectFlags
	q_Object.disconnect(Autoload.get_string(),self,Autoload.get_string())
	Autoload.qq = str(q_Object.emit_signal(Autoload.get_string()))
	###free()

	Autoload.qq = str(get(Autoload.get_string()))
	Autoload.qq = str(get_class())
	Autoload.qq = str(get_incoming_connections())
	Autoload.qq = str(get_indexed(Autoload.get_string()))
	Autoload.qq = str(get_instance_id())
	if.has_meta(Autoload.get_string()):
		Autoload.qq = str(get_meta(Autoload.get_string()))
	Autoload.qq = str(get_meta_list())
	Autoload.qq = str(get_method_list())
	Autoload.qq = str(get_property_list())
	Autoload.qq = str(get_script())
	Autoload.qq = str(get_signal_connection_list(Autoload.get_string()))
	Autoload.qq = str(get_signal_list())

	Autoload.qq = str(has_meta(Autoload.get_string()))
	Autoload.qq = str(has_method(Autoload.get_string()))
	Autoload.qq = str(has_user_signal(Autoload.get_string()))

	Autoload.qq = str(is_blocking_signals())
	Autoload.qq = str(is_class(Autoload.get_string()))
	Autoload.qq = str(is_connected(Autoload.get_string(),self,Autoload.get_string()))
	Autoload.qq = str(is_queued_for_deletion())

	#Better do not touch this BUG
	#for i in range(2000):
	#	print(i)
	#	if (i != 10)&&(i != 11)&&(i != 41):
	#		notification(i,Autoload.get_bool())
	###notification(Autoload.get_int(),Autoload.get_bool())
	property_list_changed_notify()
	remove_meta(Autoload.get_string())

	set(Autoload.get_string(),Autoload.loadA("CubeMesh.tres"))
	set_block_signals(Autoload.get_bool())
	set_deferred(Autoload.get_string(),Autoload.loadA("CubeMesh.tres"))
	set_indexed(Autoload.get_string(),Autoload.loadA("CubeMesh.tres"))
	set_message_translation(Autoload.get_bool())
	set_meta(Autoload.get_string(), Autoload.loadA("CubeMesh.tres"))
	#set_script(Reference.new())

	Autoload.qq = str(to_string())
	Autoload.qq = str(tr(Autoload.get_string()))

func A_Node(q_Node : Node) -> void:
	pass

func A_Node2D(q_Node2D : Node2D) -> void:
	
	var node_temp : Node = load("res://RES/Node.tscn").instance()
	add_child(node_temp)

	if randi()%2 == 1:
		q_Node2D.set_position(Autoload.get_vector2())
	if randi()%2 == 1:
		q_Node2D.set_rotation(Autoload.get_float())
	if randi()%2 == 1:
		q_Node2D.set_rotation_degrees(Autoload.get_float())
	if randi()%2 == 1:
		q_Node2D.set_scale(Autoload.get_vector2())
	if randi()%2 == 1:
		q_Node2D.set_transform(Autoload.get_transform2d())
	if randi()%2 == 1:
		q_Node2D.set_global_position(Autoload.get_vector2())
	if randi()%2 == 1:
		q_Node2D.set_global_rotation(Autoload.get_float())
	if randi()%2 == 1:
		q_Node2D.set_global_rotation_degrees(Autoload.get_float())
	if randi()%2 == 1:
		q_Node2D.set_global_scale(Autoload.get_vector2())
	if randi()%2 == 1:
		q_Node2D.set_global_transform(Autoload.get_transform2d())
	if randi()%2 == 1:
		q_Node2D.set_z_index(Autoload.get_int())
	if randi()%2 == 1:
		q_Node2D.set_z_as_relative(Autoload.get_bool())
	if randi()%2 == 1:
		q_Node2D.apply_scale(Autoload.get_vector2())
	if randi()%2 == 1:
		q_Node2D.get_angle_to(Autoload.get_vector2())
	if randi()%2 == 1:
		q_Node2D.get_relative_transform_to_parent(node_temp)
	if randi()%2 == 1:
		q_Node2D.global_translate(Autoload.get_vector2())
	if randi()%2 == 1:
		q_Node2D.look_at(Autoload.get_vector2())
	if randi()%2 == 1:
		q_Node2D.move_local_x(Autoload.get_float(),Autoload.get_bool())
	if randi()%2 == 1:
		q_Node2D.move_local_y(Autoload.get_float(),Autoload.get_bool())
	if randi()%2 == 1:
		q_Node2D.rotate(Autoload.get_float())
	if randi()%2 == 1:
		q_Node2D.to_global(Autoload.get_vector2())
	if randi()%2 == 1:
		q_Node2D.to_local(Autoload.get_vector2())
	if randi()%2 == 1:
		q_Node2D.translate(Autoload.get_vector2())

	node_temp.queue_free()

func A_CanvasItem(q_CanvasItem : CanvasItem) -> void:
	if randi()%2 == 1:
		q_CanvasItem.set_visible(Autoload.get_bool())
	if randi()%2 == 1:
		q_CanvasItem.set_modulate(Autoload.get_color())
	if randi()%2 == 1:
		q_CanvasItem.set_self_modulate(Autoload.get_color())
	if randi()%2 == 1:
		q_CanvasItem.set_draw_behind_parent(Autoload.get_bool())
	if randi()%2 == 1:
		q_CanvasItem._set_on_top(Autoload.get_bool())
	if randi()%2 == 1:
		q_CanvasItem.set_light_mask(Autoload.get_int())
	if randi()%2 == 1:
		q_CanvasItem.set_material(Autoload.loadA("SpatialMaterial.tres"))
	if randi()%2 == 1:
		q_CanvasItem.set_use_parent_material(Autoload.get_bool())

	if randi()%2 == 1:
		q_CanvasItem.force_update_transform()

	if randi()%2 == 1:
		Autoload.qq = str(q_CanvasItem.get_canvas())
	if randi()%2 == 1:
		Autoload.qq = str(q_CanvasItem.get_canvas_item())
	if randi()%2 == 1:
		Autoload.qq = str(q_CanvasItem.get_canvas_transform())
	if randi()%2 == 1:
		Autoload.qq = str(q_CanvasItem.get_global_mouse_position())
	if randi()%2 == 1:
		Autoload.qq = str(q_CanvasItem.get_global_transform())
	if randi()%2 == 1:
		Autoload.qq = str(q_CanvasItem.get_global_transform_with_canvas())
	if randi()%2 == 1:
		Autoload.qq = str(q_CanvasItem.get_local_mouse_position())
	if randi()%2 == 1:
		Autoload.qq = str(q_CanvasItem.get_transform())
	if randi()%2 == 1:
		Autoload.qq = str(q_CanvasItem.get_viewport_rect())
	if randi()%2 == 1:
		Autoload.qq = str(q_CanvasItem.get_viewport_transform())
	if randi()%2 == 1:
		Autoload.qq = str(q_CanvasItem.get_world_2d())

	if randi()%2 == 1:
		q_CanvasItem.hide()

	if randi()%2 == 1:
		Autoload.qq = str(q_CanvasItem.is_local_transform_notification_enabled())
	if randi()%2 == 1:
		Autoload.qq = str(q_CanvasItem.is_set_as_toplevel())
	if randi()%2 == 1:
		Autoload.qq = str(q_CanvasItem.is_transform_notification_enabled())
	if randi()%2 == 1:
		Autoload.qq = str(q_CanvasItem.is_visible_in_tree())

	if randi()%2 == 1:
		Autoload.qq = str(q_CanvasItem.make_canvas_position_local(Autoload.get_vector2()))
	if randi()%2 == 1:
		Autoload.qq = str(q_CanvasItem.make_input_local(Autoload.loadA("InputEventAction.tres")))

	if randi()%2 == 1:
		q_CanvasItem.set_as_toplevel(Autoload.get_bool())
	if randi()%2 == 1:
		q_CanvasItem.set_notify_local_transform(Autoload.get_bool())
	if randi()%2 == 1:
		q_CanvasItem.set_notify_transform(Autoload.get_bool())

	if randi()%2 == 1:
		q_CanvasItem.show()
	if randi()%2 == 1:
		q_CanvasItem.update()

func A_CollisionObject2D(q_CollisionObject2D : CollisionObject2D) -> void:
	if randi() % 2 == 1:
		q_CollisionObject2D.set_pickable(Autoload.get_bool())

	###_input_event(get_viewport(), Autoload.loadA("InputEventAction.tres"), Autoload.get_int())

	if randi() % 2 == 1:
		q_CollisionObject2D.create_shape_owner(Autoload.get_nodes(self))

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
		q_CollisionObject2D.shape_owner_add_shape(Autoload.get_int(),Autoload.loadA("CircleShape2D.tres"))
	if randi() % 2 == 1:
		q_CollisionObject2D.shape_owner_clear_shapes(Autoload.get_int())
	if randi() % 2 == 1:
		q_CollisionObject2D.shape_owner_get_owner(Autoload.get_int())
	if randi() % 2 == 1:
		q_CollisionObject2D.shape_owner_get_shape(Autoload.get_int(),Autoload.get_int())
	if randi() % 2 == 1:
		q_CollisionObject2D.shape_owner_get_shape_count(Autoload.get_int())
	if randi() % 2 == 1:
		q_CollisionObject2D.shape_owner_get_shape_index(Autoload.get_int(),Autoload.get_int())
	if randi() % 2 == 1:
		q_CollisionObject2D.shape_owner_get_transform(Autoload.get_int())
	if randi() % 2 == 1:
		q_CollisionObject2D.shape_owner_remove_shape(Autoload.get_int(),Autoload.get_int())
	if randi() % 2 == 1:
		q_CollisionObject2D.shape_owner_set_disabled(Autoload.get_int(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_CollisionObject2D.shape_owner_set_one_way_collision(Autoload.get_int(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_CollisionObject2D.shape_owner_set_one_way_collision_margin(Autoload.get_int(),Autoload.get_float())
	if randi() % 2 == 1:
		q_CollisionObject2D.shape_owner_set_transform(Autoload.get_int(), Autoload.get_transform2d())

func A_PhysicsBody2D(q_PhysicsBody2D : PhysicsBody2D) -> void:
	if randi() % 2 == 1:
		q_PhysicsBody2D._set_layers(Autoload.get_int())
	if randi() % 2 == 1:
		q_PhysicsBody2D.set_collision_layer(Autoload.get_int())
	if randi() % 2 == 1:
		q_PhysicsBody2D.set_collision_mask(Autoload.get_int())

#	if randi() % 2 == 1:
#		q_PhysicsBody2D.add_collision_exception_with(Autoload.get_nodes(self))

	if randi() % 2 == 1:
		q_PhysicsBody2D.get_collision_exceptions()
	if randi() % 2 == 1:
		q_PhysicsBody2D.get_collision_layer_bit(Autoload.get_int())
	if randi() % 2 == 1:
		q_PhysicsBody2D.get_collision_mask_bit(Autoload.get_int())

	if randi() % 2 == 1:
		q_PhysicsBody2D.remove_collision_exception_with(Autoload.get_nodes(self))

	if randi() % 2 == 1:
		q_PhysicsBody2D.set_collision_layer_bit(Autoload.get_int(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_PhysicsBody2D.set_collision_mask_bit(Autoload.get_int(),Autoload.get_bool())
		
		
		
		
func A_Joint2D(q_Joint2D : Joint2D) -> void:
		if randi() % 2 == 1:
			q_Joint2D.set_node_a(Autoload.get_nodepath(self))
		if randi() % 2 == 1:
			q_Joint2D.set_node_b(Autoload.get_nodepath(self))
		if randi() % 2 == 1:
			q_Joint2D.set_bias(Autoload.get_float())
		if randi() % 2 == 1:
			q_Joint2D.set_exclude_nodes_from_collision(Autoload.get_bool())
