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
		set_custom_multiplayer(MultiplayerAPI.new())
		
		#_exit_tree()
		#_enter_tree()
		#_get_configuration_warning()
		#_input(InputEvent.new())
		#_physics_process(0.0)
		#_process(0.0)
		#_ready()
		#_unhandled_input(InputEvent.new())
		#_unhandled_key_input(InputEventKey.new())
		
		add_child(TextureButton.new(),bool(randi()%2))
		add_child_below_node(TextureButton.new(),get_parent(),bool(randi()%2))
		add_to_group("asfqwtg",bool(randi()%2))
		
		can_process()
		duplicate(randi() % 15) # DuplicateFlags
		
		find_node("asfqgwq",bool(randi()%2),bool(randi()%2))
		find_parent("fqwfqwgf a")
		
		get_child(randi() % get_child_count())
		get_child_count()
		get_children()
		get_groups()
		get_index()
		get_network_master()
		get_node(NodePath("awgagfa"))
		get_node_and_resource(NodePath("awgagfa"))
		get_node_or_null(NodePath("awgagfa"))
		get_parent()
		get_path()
		get_path_to(self)
		get_physics_process_delta_time()
		get_position_in_parent()
		get_process_delta_time()
		get_scene_instance_load_placeholder()
		get_tree()
		get_viewport()
		
		has_node(NodePath("awgagfa"))
		has_node_and_resource(NodePath("awgagfa"))
		
		is_a_parent_of(self)
		is_displayed_folded()
		is_greater_than(get_parent())
		is_in_group("asfafqaw")
		is_inside_tree()
		is_network_master()
		is_physics_processing()
		is_physics_processing_internal()
		is_processing()
		is_processing_input()
		is_processing_internal()
		is_processing_unhandled_input()
		is_processing_unhandled_key_input()
		
		move_child(get_child(randi() % get_child_count()),randi() % get_child_count())
		
		print_stray_nodes()
		print_tree()
		print_tree_pretty()
		
		propagate_call("asfafqwtgq",[],bool(randi()%2))
		propagate_notification(randi() % 1013)
		
		#queue_free()
		raise()
		
		remove_and_skip() ## ?
		remove_child(get_child(randi() % get_child_count()))
		remove_from_group("asfqwgqwgf")
		
		replace_by(get_parent(),bool(randi()%2))
		request_ready()
		
		rpc("asfqwgag")
		rpc_config("agfqwege",randi() % (MultiplayerAPI.RPC_MODE_PUPPETSYNC + 1))
		rpc_id(randi()%50,"asfqwqt")
		rpc_unreliable("asfqwgtq")
		rpc_unreliable_id(randi()%50,"asfqwfqw")
		
		rset("afqwfasf", TextEdit.new())
		rset_config("agfqwege",randi() % (MultiplayerAPI.RPC_MODE_PUPPETSYNC + 1))
		rset_id(randi()%50,"faqawfwqa",TextEdit.new())
		rset_unreliable("asfqwgtq", TextureButton.new())
		rset_unreliable_id(randi()%50,"asfqwfqw",TextEdit.new())
		
		set_display_folded(bool(randi()%2))
		set_network_master(randi()%50,bool(randi()%2))
		set_physics_process(bool(randi()%2))
		set_physics_process_internal(bool(randi()%2))
		#set_process(bool(randi()%2))
		set_process_input(bool(randi()%2))
		set_process_internal(bool(randi()%2))
		set_process_priority(randi()%50)
		set_process_unhandled_input(bool(randi()%2))
		set_process_unhandled_key_input(bool(randi()%2))
		set_scene_instance_load_placeholder(bool(randi()%2))
		
		
		#Object
		_get("astaf")
		_get_property_list()
		_init()
		_notification(randi()%50)
		_set("SAasa",TextEdit.new())
		_to_string()
		
		add_user_signal("asfqfq")
		
		call("afqwfasf")
		call_deferred("fasfqwfa")
		callv("asfafaf",[12,125])
		
		can_translate_messages()
		connect("script_changed",self,"get",["asfa"],randi() % 15) # ConnectFlags
		disconnect("script_changed",self,"get")
		emit_signal("script_changed")
		#free()
		
		get("afasfq")
		get_class()
		get_incoming_connections()
		get_indexed("asfafqw")
		get_instance_id()
		get_meta("asfqwfag")
		get_meta_list()
		get_method_list()
		get_property_list()
		get_script()
		get_signal_connection_list("script_changed")
		get_signal_list()
		
		has_meta("asfasfas")
		has_method("asfasfas")
		has_user_signal("asfasfas")
		
		is_blocking_signals()
		is_class("asfasfas")
		is_connected("script_changed",self,"get")
		is_queued_for_deletion()
		
		notification(randi()%1000,bool(randi()%2))
		property_list_changed_notify()
		remove_meta("afqwqwr")
		
		set("qfafafdc",TextEdit.new())
		set_block_signals(bool(randi()%2))
		set_deferred("asfqwfq",TextEdit.new())
		set_indexed("asfqwfqw",TextEdit.new())
		set_message_translation(bool(randi()%2))
		set_meta("fsafasfwqa", TextEdit.new())
		set_script(Reference.new())
		
		to_string()
		tr("asfqwfqwt        ")
		
		