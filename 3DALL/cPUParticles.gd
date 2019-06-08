extends CPUParticles

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_emitting(bool(randi()%2))
		set_amount(randi()%50 + 10)
		set_lifetime(randf() * 10 + 5)
		set_one_shot(bool(randi()%2))
		set_pre_process_time(randf() * 50)
		set_speed_scale(randf() * 50)
		set_explosiveness_ratio(randf())
		set_randomness_ratio(randf())
		set_fixed_fps(randi()%10 + 50)
		set_fractional_delta(bool(randi()%2))
		set_use_local_coordinates(bool(randi()%2))
		set_draw_order(randi() % (DRAW_ORDER_VIEW_DEPTH + 1))
		set_mesh(Mesh.new())
		set_emission_shape(randi()%(EMISSION_SHAPE_DIRECTED_POINTS + 1))
		set_emission_sphere_radius(randf() * 50)
		set_emission_box_extents(Vector3(randf() * 50,randf() * 50,randf() * 50))
		set_emission_points(PoolVector3Array([Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)]))
		set_emission_normals(PoolVector3Array([Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)]))
		set_emission_colors([Color(randf(),randf(),randf(),randf()),Color(randf(),randf(),randf(),randf())])
		
		for i in range(FLAG_MAX):
			set_particle_flag(i,bool(randi()%2))
		set_spread(randf() * 360)
		set_flatness(randf())
		set_gravity(Vector3(randf() * 50,randf() * 50,randf() * 50))
		
		for i in range(PARAM_MAX):
			set_param(i,randf() * 2)
			set_param_curve(i,load("res://Curve" + str(randi()%2+1) + ".tres"))
			set_param_randomness(i,randf())
		
		convert_from_particles(Particles.new())
		if randi() % 5 == 0:
			restart()
		
		##GeometryInstance
		set_material_override(Material.new())
		set_cast_shadows_setting(randi() % (SHADOW_CASTING_SETTING_SHADOWS_ONLY + 1))
		set_extra_cull_margin(randf() * 50)
		for i in range(FLAG_MAX):
			set_flag(i,bool(randi()%2))
		set_lod_min_distance(randf() * 50)
		set_lod_min_hysteresis(randf() * 50)
		set_lod_max_distance(randf() * 50)
		set_lod_max_hysteresis(randf() * 50)
		set_custom_aabb(AABB(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
		
		##VisualInstance
		set_layer_mask(randi() % 1000000)
		qq += str(get_aabb())
		qq += str(get_base())
		qq += str(get_instance())
		qq += str(get_layer_mask_bit(randi() % 20))
		qq += str(get_transformed_aabb())
		set_base(get_instance())
		set_layer_mask_bit(randi()%20,bool(randi()%2))
		
		##Spatial
		set_global_transform(Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
		set_translation(Vector3(randf() * 50,randf() * 50,randf() * 50))
		set_rotation_degrees(Vector3(randf() * 50,randf() * 50,randf() * 50))
		set_rotation(Vector3(randf() * 50,randf() * 50,randf() * 50))
		set_scale(Vector3(randf() * 50,randf() * 50,randf() * 50))
		set_transform(Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
		set_visible(bool(randi()%2))
		set_gizmo(SpatialGizmo.new())
		
		force_update_transform()
		
		qq += str(get_parent_spatial())
		qq += str(get_world())
		
		global_rotate(Vector3(randf() * 50,randf() * 50,randf() * 50),randf() * 50)
		global_scale(Vector3(randf() * 50,randf() * 50,randf() * 50))
		global_translate(Vector3(randf() * 50,randf() * 50,randf() * 50))
		
		hide()
		
		qq += str(is_local_transform_notification_enabled())
		qq += str(is_scale_disabled())
		qq += str(is_set_as_toplevel())
		qq += str(is_transform_notification_enabled())
		qq += str(is_visible_in_tree())
		
		look_at(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50))
		look_at_from_position(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50))
		
		orthonormalize()
		
		rotate(Vector3(randf() * 50,randf() * 50,randf() * 50),randf() * 50)
		rotate_object_local(Vector3(randf() * 50,randf() * 50,randf() * 50),randf() * 50)
		rotate_x(randf() * 50)
		rotate_y(randf() * 50)
		rotate_z(randf() * 50)
		
		scale_object_local(Vector3(randf() * 50,randf() * 50,randf() * 50))
		
		set_as_toplevel(bool(randi()%2))
		set_disable_scale(bool(randi()%2))
		set_identity()
		set_ignore_transform_notification(bool(randi()%2))
		set_notify_local_transform(bool(randi()%2))
		set_notify_transform(bool(randi()%2))
		
		show()
		
		to_global(Vector3(randf() * 50,randf() * 50,randf() * 50))
		to_local(Vector3(randf() * 50,randf() * 50,randf() * 50))
		
		translate(Vector3(randf() * 50,randf() * 50,randf() * 50))
		translate_object_local(Vector3(randf() * 50,randf() * 50,randf() * 50))
		
		update_gizmo()
		
		#Node
		set_pause_mode(randi() % (PAUSE_MODE_PROCESS + 1))
		set_name(str("asfafqwa") + str(randi() % 2541252))
		set_filename(str("asfafqwa") + str(randi() % 2541252))
		set_owner(self)
		get_multiplayer()
		set_custom_multiplayer(
		_exit_tree()
		_enter_tree()
		_get_configuration_warning()
		_input(
		#_physics_process(0.0)
		#_process(0.0)
		#_ready()
		_unhandled_input(
		_unhandled_key_input(
		add_child(
		add_child_below_node(
		add_to_group(
		can_process()
		duplicate(
		find_node(
		find_parent(
		get_child(
		get_child_count()
		get_children()
		get_groups()
		get_index()
		get_network_master()
		get_node(
		get_node_and_resource(
		get_node_or_null(
		get_parent()
		get_path()
		get_path_to(
		get_physics_process_delta_time()
		get_position_in_parent()
		get_process_delta_time()
		get_scene_instance_load_placeholder()
		get_tree()
		get_viewport()
		has_node(
		has_node_and_resource(
		is_a_parent_of(
		is_displayed_folded()
		is_greater_than(
		is_in_group(
		is_inside_tree()
		is_network_master()
		is_physics_processing()
		is_physics_processing_internal()
		is_processing()
		is_processing_input()
		is_processing_internal()
		is_processing_unhandled_input()
		is_processing_unhandled_key_input()
		move_child(
		print_stray_nodes()
		print_tree()
		print_tree_pretty()
		propagate_call(
		propagate_notification(
		#queue_free()
		raise()
		remove_and_skip() ## ?
		remove_child(
		remove_from_group(
		replace_by(
		request_ready()
		rpc(
		rpc_config(
		rpc_id(
		rpc_unreliable(
		rpc_unreliable_id(
		rset(
		rset_config(
		rset_id(
		rset_unreliable(
		rset_unreliable_id(
		set_display_folded(
		set_network_master(
		set_physics_process(
		set_physics_process_internal(
		#set_process(
		set_process_input(
		set_process_internal(
		set_process_priority(
		set_process_unhandled_input(
		set_process_unhandled_key_input(
		set_scene_instance_load_placeholder(
		
		_get(
		_get_property_list()
		_init()
		_notification( 
		_set(
		_to_string()
		add_user_signal(
		call(
		call_deferred(
		callv(
		can_translate_messages()
		connect(
		disconnect(
		emit_signal(
		#free()
		get(
		get_class()
		get_incoming_connections()
		get_indexed(
		get_instance_id()
		get_meta(
		get_meta_list()
		get_method_list()
		get_property_list()
		get_script()
		get_signal_connection_list(
		get_signal_list()
		has_meta(
		has_method(
		has_user_signal(
		is_blocking_signals()
		is_class(
		is_connected(
		is_queued_for_deletion()
		notification(
		property_list_changed_notify()
		remove_meta(
		set(
		set_block_signals(
		set_deferred(
		set_indexed(
		set_message_translation(
		set_meta(
		set_script(
		to_string()
		tr(
		
		