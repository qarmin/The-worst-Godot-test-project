extends Node

var use_Object : bool = true
var use_Node : bool = true
var use_Node2D : bool = true
var use_CanvasItem : bool = true
var use_CollisionObject2D : bool = true
var use_PhysicsBody2D : bool = true
var use_Joint2D : bool = true

func _ready():
#	use_Object = false
	use_Node = false
	use_Node2D = false
	use_CanvasItem = false
	use_CollisionObject2D = false
	use_PhysicsBody2D = false
	use_Joint2D = false
	pass

func A_Object(q_Object : Object) -> void:
	if !use_Object:
		return
	###q_Object._get(Autoload.get_string()))
	###q_Object._get_property_list())
	###q_Object._init()
	###q_Object._notification(Autoload.get_int())
	###q_Object._set(Autoload.get_string(),TextEdit.new()))
	###q_Object._to_string())

#	if randi()%2 == 1: # LEAK? ADD A LOT OF OBJECTS
#		q_Object.add_user_signal(Autoload.get_string())

		###q_Object.call(Autoload.get_string()))
	if randi()%2 == 1:
		q_Object.call_deferred(Autoload.get_string())
	if randi()%2 == 1:
		q_Object.callv(Autoload.get_string(),Autoload.get_array())

	if randi()%2 == 1:
		q_Object.can_translate_messages()
	if randi()%2 == 1:
		q_Object.connect(Autoload.get_string(),Autoload.get_nodes(q_Object),Autoload.get_string(),Autoload.get_array(),Autoload.get_int()) # ConnectFlags
	if randi()%2 == 1:
		q_Object.disconnect(Autoload.get_string(),Autoload.get_nodes(q_Object),Autoload.get_string())
	if randi()%2 == 1:
		q_Object.emit_signal(Autoload.get_string())
		###free()

	if randi()%2 == 1:
		q_Object.get(Autoload.get_string())
	if randi()%2 == 1:
		q_Object.get_class()
	if randi()%2 == 1:
		q_Object.get_incoming_connections()
	if randi()%2 == 1:
		q_Object.get_indexed(Autoload.get_string())
	if randi()%2 == 1:
		q_Object.get_instance_id()
	if randi()%2 == 1:
		if q_Object.has_meta(Autoload.get_string()):
			q_Object.get_meta(Autoload.get_string())
	if randi()%2 == 1:
		q_Object.get_meta_list()
	if randi()%2 == 1:
		q_Object.get_method_list()
	if randi()%2 == 1:
		q_Object.get_property_list()
	if randi()%2 == 1:
		q_Object.get_script()
	if randi()%2 == 1:
		q_Object.get_signal_connection_list(Autoload.get_string())
	if randi()%2 == 1:
		q_Object.get_signal_list()

	if randi()%2 == 1:
		q_Object.has_meta(Autoload.get_string())
	if randi()%2 == 1:
		q_Object.has_method(Autoload.get_string())
	if randi()%2 == 1:
		q_Object.has_user_signal(Autoload.get_string())

	if randi()%2 == 1:
		q_Object.is_blocking_signals()
	if randi()%2 == 1:
		q_Object.is_class(Autoload.get_string())
	if randi()%2 == 1:
		q_Object.is_connected(Autoload.get_string(),Autoload.get_nodes(q_Object),Autoload.get_string())
	if randi()%2 == 1:
		q_Object.is_queued_for_deletion()

#		#Better do not touch this BUG
#		for i in range(2000): #BUG
#			if (i != 10)&&(i != 11)&&(i != 41):
#			notification(i,Autoload.get_bool())
#	if randi()%2 == 1:
#		notification(Autoload.get_int(),Autoload.get_bool())
	if randi()%2 == 1:
		q_Object.property_list_changed_notify()
	if randi()%2 == 1:
		q_Object.remove_meta(Autoload.get_string())

	if randi()%2 == 1:
		q_Object.set(Autoload.get_string(),Autoload.loadA("CubeMesh.tres"))
	if randi()%2 == 1:
		q_Object.set_block_signals(Autoload.get_bool())
	if randi()%2 == 1:
		q_Object.set_deferred(Autoload.get_string(),Autoload.loadA("CubeMesh.tres"))
	if randi()%2 == 1:
		q_Object.set_indexed(Autoload.get_string(),Autoload.loadA("CubeMesh.tres"))
	if randi()%2 == 1:
		q_Object.set_message_translation(Autoload.get_bool())
	if randi()%2 == 1:
		q_Object.set_meta(Autoload.get_string(), Autoload.loadA("CubeMesh.tres"))
#BUG	if randi()%2 == 1:
#		q_Object.set_script(Reference.new())

	if randi()%2 == 1:
		q_Object.to_string()
	if randi()%2 == 1:
		q_Object.tr(Autoload.get_string())

func A_Node(q_Node : Node) -> void:
	if !use_Node:
		return
		
	if randi()%2 == 1:
		set_pause_mode(Autoload.get_int())
	if randi()%2 == 1:
		set_name(Autoload.get_string())
	if randi()%2 == 1:
		set_filename(Autoload.get_string())
	if randi()%2 == 1:
		set_owner(get_parent())
	if randi()%2 == 1:
		get_multiplayer()
	if randi()%2 == 1:
		set_custom_multiplayer(MultiplayerAPI.new())
	
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
	if randi()%2 == 1:
		add_to_group(Autoload.get_string(),Autoload.get_bool())
	
	if randi()%2 == 1:
		can_process()
	if randi()%2 == 1:
		var nooo : Node = duplicate(Autoload.get_int()) # DuplicateFlags
		if nooo != null:
			nooo.queue_free()
	
	if randi()%2 == 1:
		find_node(Autoload.get_string(),Autoload.get_bool(),Autoload.get_bool())
	if randi()%2 == 1:
		find_parent(Autoload.get_string())
	
	if randi()%2 == 1:
		get_child(Autoload.get_int())
	if randi()%2 == 1:
		get_child_count()
	if randi()%2 == 1:
		get_children()
	if randi()%2 == 1:
		get_groups()
	if randi()%2 == 1:
		get_index()
	if randi()%2 == 1:
		get_network_master()
	if randi()%2 == 1:
		get_node(Autoload.get_nodepath(q_Node))
	if randi()%2 == 1:
		get_node_and_resource(Autoload.get_nodepath(q_Node))
	if randi()%2 == 1:
		get_node_or_null(Autoload.get_nodepath(q_Node))
	if randi()%2 == 1:
		get_parent()
	if randi()%2 == 1:
		get_path()
	if randi()%2 == 1:
		get_path_to(get_parent())
	if randi()%2 == 1:
		get_physics_process_delta_time()
	if randi()%2 == 1:
		get_position_in_parent()
	if randi()%2 == 1:
		get_process_delta_time()
	if randi()%2 == 1:
		get_scene_instance_load_placeholder()
	if randi()%2 == 1:
		get_tree()
	if randi()%2 == 1:
		get_viewport()
	
	if randi()%2 == 1:
		has_node(Autoload.get_nodepath(q_Node))
	if randi()%2 == 1:
		has_node_and_resource(Autoload.get_nodepath(q_Node))
	
	if randi()%2 == 1:
		is_a_parent_of(Autoload.get_nodes(q_Node))
	if randi()%2 == 1:
		is_displayed_folded()
	if randi()%2 == 1:
		is_greater_than(get_parent())
	if randi()%2 == 1:
		is_in_group(Autoload.get_string())
	if randi()%2 == 1:
		is_inside_tree()
	if randi()%2 == 1:
		is_network_master()
	if randi()%2 == 1:
		is_physics_processing()
	if randi()%2 == 1:
		is_physics_processing_internal()
	if randi()%2 == 1:
		is_processing()
	if randi()%2 == 1:
		is_processing_input()
	if randi()%2 == 1:
		is_processing_internal()
	if randi()%2 == 1:
		is_processing_unhandled_input()
	if randi()%2 == 1:
		is_processing_unhandled_key_input()
	
	if randi()%2 == 1:
		move_child(get_child(Autoload.get_int()),Autoload.get_int())
	
		#This only spam output
		###print_stray_nodes()
		###print_tree()
		###print_tree_pretty()
	
	if randi()%2 == 1:
		propagate_call(Autoload.get_string(),Autoload.get_array(),Autoload.get_bool())
#	if randi()%2 == 1: #BUG
#		propagate_notification(Autoload.get_int())
	
		###queue_free()
	if randi()%2 == 1:
		raise()
	
		###remove_and_skip() ## ?
		###remove_child(child_number) TOO DANGEREUS IN THIS COMPLEX PROJECT
	if randi()%2 == 1:
		remove_from_group(Autoload.get_string())
	
	if randi()%2 == 1:
		replace_by(get_child(Autoload.get_int()),Autoload.get_bool())
	if randi()%2 == 1:
		request_ready()
	
		rpc(Autoload.get_string())
	if randi()%2 == 1:
		rpc_config(Autoload.get_string(),Autoload.get_int())
	if randi()%2 == 1:
		rpc_id(Autoload.get_int(),Autoload.get_string())
	if randi()%2 == 1:
		rpc_unreliable(Autoload.get_string())
	if randi()%2 == 1:
		rpc_unreliable_id(Autoload.get_int(),Autoload.get_string())
	
	if randi()%2 == 1:
		rset(Autoload.get_string(), Autoload.loadA("CubeMesh.tres"))
	if randi()%2 == 1:
		rset_config(Autoload.get_string(),Autoload.get_int())
	if randi()%2 == 1:
		rset_id(Autoload.get_int(), Autoload.get_string(),Autoload.loadA("CubeMesh.tres"))
	if randi()%2 == 1:
		rset_unreliable(Autoload.get_string(), Autoload.loadA("CubeMesh.tres"))
	if randi()%2 == 1:
		rset_unreliable_id(Autoload.get_int(),Autoload.get_string(),Autoload.loadA("CubeMesh.tres"))
	
	if randi()%2 == 1:
		set_display_folded(Autoload.get_bool())
	if randi()%2 == 1:
		set_network_master(Autoload.get_int(),Autoload.get_bool())
	if randi()%2 == 1:
		set_physics_process(Autoload.get_bool())
	if randi()%2 == 1:
		set_physics_process_internal(Autoload.get_bool())
		###set_process(Autoload.get_bool())
	if randi()%2 == 1:
		set_process_input(Autoload.get_bool())
	if randi()%2 == 1:
		set_process_internal(Autoload.get_bool())
		###set_process_priority(Autoload.get_int())
	if randi()%2 == 1:
		set_process_unhandled_input(Autoload.get_bool())
	if randi()%2 == 1:
		set_process_unhandled_key_input(Autoload.get_bool())
	if randi()%2 == 1:
		set_scene_instance_load_placeholder(Autoload.get_bool())

func A_Node2D(q_Node2D : Node2D) -> void:
	if !use_Node2D:
		return
	
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
	if !use_CanvasItem:
		return
	
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
		q_CanvasItem.get_canvas()
	if randi()%2 == 1:
		q_CanvasItem.get_canvas_item()
	if randi()%2 == 1:
		q_CanvasItem.get_canvas_transform()
	if randi()%2 == 1:
		q_CanvasItem.get_global_mouse_position()
	if randi()%2 == 1:
		q_CanvasItem.get_global_transform()
	if randi()%2 == 1:
		q_CanvasItem.get_global_transform_with_canvas()
	if randi()%2 == 1:
		q_CanvasItem.get_local_mouse_position()
	if randi()%2 == 1:
		q_CanvasItem.get_transform()
	if randi()%2 == 1:
		q_CanvasItem.get_viewport_rect()
	if randi()%2 == 1:
		q_CanvasItem.get_viewport_transform()
	if randi()%2 == 1:
		q_CanvasItem.get_world_2d()

	if randi()%2 == 1:
		q_CanvasItem.hide()

	if randi()%2 == 1:
		q_CanvasItem.is_local_transform_notification_enabled()
	if randi()%2 == 1:
		q_CanvasItem.is_set_as_toplevel()
	if randi()%2 == 1:
		q_CanvasItem.is_transform_notification_enabled()
	if randi()%2 == 1:
		q_CanvasItem.is_visible_in_tree()

	if randi()%2 == 1:
		q_CanvasItem.make_canvas_position_local(Autoload.get_vector2())
	if randi()%2 == 1:
		q_CanvasItem.make_input_local(Autoload.loadA("InputEventAction.tres"))

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
	if !use_CollisionObject2D:
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
	if !use_PhysicsBody2D:
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
		q_PhysicsBody2D.set_collision_layer_bit(Autoload.get_int(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_PhysicsBody2D.set_collision_mask_bit(Autoload.get_int(),Autoload.get_bool())
		
		
		
		
func A_Joint2D(q_Joint2D : Joint2D) -> void:
	if !use_Joint2D:
		return
		
	if randi() % 2 == 1:
		q_Joint2D.set_node_a(Autoload.get_nodepath(q_Joint2D))
	if randi() % 2 == 1:
		q_Joint2D.set_node_b(Autoload.get_nodepath(q_Joint2D))
	if randi() % 2 == 1:
		q_Joint2D.set_bias(Autoload.get_float())
	if randi() % 2 == 1:
		q_Joint2D.set_exclude_nodes_from_collision(Autoload.get_bool())
