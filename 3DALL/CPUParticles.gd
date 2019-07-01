extends CPUParticles

var counter : float
var counter_temp : int = 0
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func empty():
	pass
	
func empty2(var rrr, var rqw):
	var qq : String = ""
	qq += str(rrr)
	qq += str(rqw)
	qq = qq

func _process(delta) -> void:
	counter -= delta
	counter_temp += 1
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_emitting(bool(randi()%2))
		set_amount(randi()%10 + 5)
		set_lifetime(randf() * 10 + 5)
		set_one_shot(bool(randi()%2))
		set_pre_process_time(randf() * 5)
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
			set_param_curve(i,load("res://RES/Curve" + str(randi()%2+1) + ".tres"))
			set_param_randomness(i,randf())
			
		var particles : Particles = Particles.new()
		convert_from_particles(particles)
		particles.queue_free()
		if randi() % 5 == 0:
			restart()
		
		##GeometryInstance
		set_material_override(SpatialMaterial.new())
		set_cast_shadows_setting(randi() % (SHADOW_CASTING_SETTING_SHADOWS_ONLY + 1))
		set_extra_cull_margin(randf() * 50)
#		for i in range(FLAG_MAX):
#			set_flag(i,bool(randi()%2))
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
		#set_base(RID())
		set_layer_mask_bit(randi()%20,bool(randi()%2))
		
		##Spatial
		set_global_transform(Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
		set_translation(Vector3(randf() * 50,randf() * 50,randf() * 50))
		set_rotation_degrees(Vector3(randf() * 50,randf() * 50,randf() * 50))
		set_rotation(Vector3(randf() * 50,randf() * 50,randf() * 50))
		set_scale(Vector3(randf() * 50,randf() * 50,randf() * 50))
		set_transform(Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
		set_visible(bool(randi()%2))
		#set_gizmo(SpatialGizmo.new())
		
		force_update_transform()
		
		qq += str(get_parent_spatial())
		#qq += str(get_world())
		
		#global_rotate(Vector3(randf() * 50,randf() * 50,randf() * 50),randf() * 50)
		#global_scale(Vector3(randf() * 50,randf() * 50,randf() * 50))
		#global_translate(Vector3(randf() * 50,randf() * 50,randf() * 50))
		
		hide()
		
		qq += str(is_local_transform_notification_enabled())
		qq += str(is_scale_disabled())
		qq += str(is_set_as_toplevel())
		qq += str(is_transform_notification_enabled())
		qq += str(is_visible_in_tree())
		
		#look_at(Vector3(randf() * 50 + 4,randf() * 50 + 45,randf() * 50 + 215),Vector3(randf() * 50 + 4,randf() * 50 + 45,randf() * 50 + 215))
		#look_at_from_position(Vector3(randf() * 50 + 4,randf() * 50 + 45,randf() * 50 + 215),Vector3(randf() * 50 + 4,randf() * 50 + 45,randf() * 50 + 215),Vector3(randf() * 50 + 4,randf() * 50 + 45,randf() * 50 + 215))
		
		orthonormalize()
		
		#rotate(Vector3(randf() * 50 + 150,randf() * 50 + 100,randf() * 50 + 15),randf() * 50 + 10)
		#rotate_object_local(Vector3(randf() * 50 + 4,randf() * 50 + 45,randf() * 50 + 215),randf() * 50)
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
		
		qq += str(to_global(Vector3(randf() * 50,randf() * 50,randf() * 50)))
		qq += str(to_local(Vector3(randf() * 50,randf() * 50,randf() * 50)))
		
		translate(Vector3(randf() * 50,randf() * 50,randf() * 50))
		translate_object_local(Vector3(randf() * 50,randf() * 50,randf() * 50))
		
		update_gizmo()
		
		#Node
		set_pause_mode(randi() % (PAUSE_MODE_PROCESS + 1))
		set_name(str("asfafqwa") + str(randi() % 2541252))
		set_filename(str("asfafqwa") + str(randi() % 2541252))
		set_owner(get_parent())
		qq += str(get_multiplayer())
		set_custom_multiplayer(MultiplayerAPI.new())
		
		###_exit_tree()
		###_enter_tree()
		###qq += str(_get_configuration_warning())
		###_input(InputEvent.new())
		###_physics_process(0.0)
		###_process(0.0)
		###_ready()
		###_unhandled_input(InputEvent.new())
		###_unhandled_key_input(InputEventKey.new())
		for _i in range(10):
			if get_child_count() > 3:
				break 
			add_child(TextureButton.new(),bool(randi()%2))
		#add_child_below_node(get_child(randi() % get_child_count()),get_child(randi() % get_child_count()),bool(randi()%2))
		add_to_group("asfqwtg",bool(randi()%2))
		
		qq += str(can_process())
		#qq += str(duplicate(randi() % 15)) # DuplicateFlags
		
		qq += str(find_node("asfqgwq",bool(randi()%2),bool(randi()%2)))
		qq += str(find_parent("fqwfqwgf a"))
		
		qq += str(get_child(randi() % get_child_count()))
		qq += str(get_child_count())
		qq += str(get_children())
		qq += str(get_groups())
		qq += str(get_index())
		qq += str(get_network_master())
		#qq += str(get_node(NodePath("./CPUParticles_ALL")))
		#qq += str(get_node_and_resource(NodePath("./CPUParticles_ALL")))
		#qq += str(get_node_or_null(NodePath("./CPUParticles_ALL")))
		qq += str(get_parent())
		qq += str(get_path())
		qq += str(get_path_to(self))
		qq += str(get_physics_process_delta_time())
		qq += str(get_position_in_parent())
		qq += str(get_process_delta_time())
		qq += str(get_scene_instance_load_placeholder())
		qq += str(get_tree())
		qq += str(get_viewport())
		
		qq += str(has_node(NodePath("awgagfa")))
		qq += str(has_node_and_resource(NodePath("awgagfa")))
		
		qq += str(is_a_parent_of(self))
		qq += str(is_displayed_folded())
		qq += str(is_greater_than(get_parent()))
		qq += str(is_in_group("asfafqaw"))
		qq += str(is_inside_tree())
		#qq += str(is_network_master())
		qq += str(is_physics_processing())
		qq += str(is_physics_processing_internal())
		qq += str(is_processing())
		qq += str(is_processing_input())
		qq += str(is_processing_internal())
		qq += str(is_processing_unhandled_input())
		qq += str(is_processing_unhandled_key_input())
		
		move_child(get_child(randi() % get_child_count()),randi() % get_child_count())
		
		#This only spam output
		###print_stray_nodes()
		###print_tree()
		###print_tree_pretty()
		
		propagate_call("asfafqwtgq",[],bool(randi()%2))
		#propagate_notification(randi() % 1013)
		
		###queue_free()
		raise()
		
		###remove_and_skip() ## ?
		var child_number = get_child(randi() % get_child_count())
		remove_child(child_number)
		child_number.queue_free()
		remove_from_group("asfqwtg")
		
		#replace_by(get_child(randi() % get_child_count()),bool(randi()%2))
		request_ready()
		
		if is_inside_tree():
			#qq += str(rpc("asfqwgag"))
			rpc_config("agfqwege",randi() % (MultiplayerAPI.RPC_MODE_PUPPETSYNC + 1))
			#qq += str(rpc_id(randi()%50,"asfqwqt"))
			#qq += str(rpc_unreliable("asfqwgtq"))
			#qq += str(rpc_unreliable_id(randi()%50,"asfqwfqw"))
			
			#rset("afqwfasf", TextEdit.new())
			rset_config("agfqwege",randi() % (MultiplayerAPI.RPC_MODE_PUPPETSYNC + 1))
			#rset_id(randi()%50,"faqawfwqa",TextEdit.new())
			#rset_unreliable("asfqwgtq", TextureButton.new())
			#rset_unreliable_id(randi()%50,"asfqwfqw",TextEdit.new())
		
		set_display_folded(bool(randi()%2))
		set_network_master(randi()%50,bool(randi()%2))
		set_physics_process(bool(randi()%2))
		set_physics_process_internal(bool(randi()%2))
		###set_process(bool(randi()%2))
		set_process_input(bool(randi()%2))
		set_process_internal(bool(randi()%2))
		###set_process_priority(randi()%50)
		#set_process_unhandled_input(bool(randi()%2))
		#set_process_unhandled_key_input(bool(randi()%2))
		set_scene_instance_load_placeholder(bool(randi()%2))
		
		
		#Object
		###qq += str(_get("astaf"))
		###qq += str(_get_property_list())
		###_init()
		###_notification(randi()%50)
		###qq += str(_set("SAasa",TextEdit.new()))
		###qq += str(_to_string())
		
		add_user_signal("asfqasffq" + str(counter_temp))

		qq += str(call("empty"))
		qq += str(call_deferred("empty"))
		qq += str(callv("empty2",[12,125]))

		qq += str(can_translate_messages())
		#qq += str(connect("script_changed",self,"get",["empty"],randi() % 14 + 1)) # ConnectFlags
		#disconnect("script_changed",self,"get")
		qq += str(emit_signal("script_changed"))
		###free()

		qq += str(get("afasfq"))
		qq += str(get_class())
		qq += str(get_incoming_connections())
		qq += str(get_indexed("asfafqw"))
		qq += str(get_instance_id())
		if.has_meta("asfqwfag"):
			qq += str(get_meta("asfqwfag"))
		qq += str(get_meta_list())
		qq += str(get_method_list())
		qq += str(get_property_list())
		qq += str(get_script())
		qq += str(get_signal_connection_list("script_changed"))
		qq += str(get_signal_list())

		qq += str(has_meta("asfasfas"))
		qq += str(has_method("asfasfas"))
		qq += str(has_user_signal("asfasfas"))

		qq += str(is_blocking_signals())
		qq += str(is_class("asfasfas"))
		qq += str(is_connected("script_changed",self,"get"))
		qq += str(is_queued_for_deletion())

		#Better not
		###notification(randi()%1000,bool(randi()%2))
		property_list_changed_notify()
		remove_meta("afqwqwr")

		set("qfafafdc",CubeMesh.new())
		set_block_signals(bool(randi()%2))
		set_deferred("asfqwfq",CubeMesh.new())
		set_indexed("asfqwfqw",CubeMesh.new())
		set_message_translation(bool(randi()%2))
		set_meta("fsafasfwqa", CubeMesh.new())
		#set_script(Reference.new())

		qq += str(to_string())
		qq += str(tr("asfqwfqwt        "))
		
		
		if Autoload.WRONG_BUGS:
			set_emitting(bool(randi()%2))
			set_amount(randi() % 20 - 500)
			set_lifetime(randf() * 1000 - 500)
			set_one_shot(bool(randi()%2))
			set_pre_process_time(randf() * 1 - 0.5)
			set_speed_scale(randf() * 1000 - 500)
			set_explosiveness_ratio(randf() * 1000 - 500)
			set_randomness_ratio(randf() * 1000 - 500)
			set_fixed_fps(randi() % 1000 - 500)
			set_fractional_delta(bool(randi()%2))
			set_use_local_coordinates(bool(randi()%2))
			set_draw_order(randi() % 1000 - 500)
			set_mesh(Mesh.new())
			set_emission_shape(randi() % 1000 - 500)
			set_emission_sphere_radius(randf() * 1000 - 500)
			set_emission_box_extents(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			set_emission_points(PoolVector3Array([Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)]))
			set_emission_normals(PoolVector3Array([Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)]))
			set_emission_colors([Color(randf(),randf(),randf(),randf()),Color(randf(),randf(),randf(),randf())])

			for i in range(FLAG_MAX):
				set_particle_flag(i,bool(randi()%2))
			set_spread(randf() * 1000 - 500)
			set_flatness(randf() * 1000 - 500)
			set_gravity(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))

			for i in range(PARAM_MAX):
				set_param(i,randf() * 1000 - 500)
				set_param_curve(i,load("res://RES/Curve" + str(randi()%3+1) + ".tres"))
				set_param_randomness(i,randf() * 1000 - 500)

			particles = Particles.new()
			convert_from_particles(particles)
			particles.queue_free()
			if randi() % 5 == 0:
				restart()

			##GeometryInstance
			set_material_override(SpatialMaterial.new())
			set_cast_shadows_setting(randi() % (SHADOW_CASTING_SETTING_SHADOWS_ONLY + 1))
			set_extra_cull_margin(randf() * 1000 - 500)
			for i in range(FLAG_MAX):
				set_flag(i,bool(randi()%2))
			set_lod_min_distance(randf() * 1000 - 500)
			set_lod_min_hysteresis(randf() * 1000 - 500)
			set_lod_max_distance(randf() * 1000 - 500)
			set_lod_max_hysteresis(randf() * 1000 - 500)
			set_custom_aabb(AABB(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))

			##VisualInstance
			set_layer_mask(randi() % 1000000)
			qq += str(get_aabb())
			qq += str(get_base())
			qq += str(get_instance())
			qq += str(get_layer_mask_bit(randi() % 1000 - 500))
			qq += str(get_transformed_aabb())
			set_base(RID())
			set_layer_mask_bit(randi() % 1000 - 500,bool(randi()%2))

			##Spatial
			set_global_transform(Transform(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
			set_translation(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			set_rotation_degrees(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			set_rotation(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			set_scale(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			set_transform(Transform(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
			set_visible(bool(randi()%2))
			set_gizmo(SpatialGizmo.new())

			force_update_transform()

			qq += str(get_parent_spatial())
			qq += str(get_world())

			global_rotate(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),randf() * 1000 - 500)
			global_scale(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			global_translate(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))

			hide()

			qq += str(is_local_transform_notification_enabled())
			qq += str(is_scale_disabled())
			qq += str(is_set_as_toplevel())
			qq += str(is_transform_notification_enabled())
			qq += str(is_visible_in_tree())

			look_at(Vector3(randf() * 1000 - 500 + 4,randf() * 1000 - 500 + 45,randf() * 1000 - 500 + 215),Vector3(randf() * 1000 - 500 + 4,randf() * 1000 - 500 + 45,randf() * 1000 - 500 + 215))
			look_at_from_position(Vector3(randf() * 1000 - 500 + 4,randf() * 1000 - 500 + 45,randf() * 1000 - 500 + 215),Vector3(randf() * 1000 - 500 + 4,randf() * 1000 - 500 + 45,randf() * 1000 - 500 + 215),Vector3(randf() * 1000 - 500 + 4,randf() * 1000 - 500 + 45,randf() * 1000 - 500 + 215))

			orthonormalize()

			rotate(Vector3(randf() * 1000 - 500 + 150,randf() * 1000 - 500 + 100,randf() * 1000 - 500 + 15),randf() * 1000 - 500 + 10)
			rotate_object_local(Vector3(randf() * 1000 - 500 + 4,randf() * 1000 - 500 + 45,randf() * 1000 - 500 + 215),randf() * 1000 - 500)
			rotate_x(randf() * 1000 - 500)
			rotate_y(randf() * 1000 - 500)
			rotate_z(randf() * 1000 - 500)

			scale_object_local(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))

			set_as_toplevel(bool(randi()%2))
			set_disable_scale(bool(randi()%2))
			set_identity()
			set_ignore_transform_notification(bool(randi()%2))
			set_notify_local_transform(bool(randi()%2))
			set_notify_transform(bool(randi()%2))

			show()

			qq += str(to_global(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
			qq += str(to_local(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))

			translate(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			translate_object_local(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))

			update_gizmo()

			#Node
			set_pause_mode(randi() % (PAUSE_MODE_PROCESS + 1))
			set_name(str("asfafqwa") + str(randi() % 2541252))
			set_filename(str("asfafqwa") + str(randi() % 2541252))
			set_owner(get_parent())
			qq += str(get_multiplayer())
			set_custom_multiplayer(MultiplayerAPI.new())

			###_exit_tree()
			###_enter_tree()
			###qq += str(_get_configuration_warning())
			###_input(InputEvent.new())
			###_physics_process(0.0)
			###_process(0.0)
			###_ready()
			###_unhandled_input(InputEvent.new())
			###_unhandled_key_input(InputEventKey.new())
			for _i in range(10):
				if get_child_count() > 3:
					break 
				add_child(TextureButton.new(),bool(randi()%2))
			add_child_below_node(get_child(randi() % 1000 - 500),get_child(randi() % 1000 - 500),bool(randi()%2))
			add_to_group("asfqwtg",bool(randi()%2))

			qq += str(can_process())
			var nooo : Node = duplicate(randi() % 1000 - 500) # DuplicateFlags
			if nooo != null:
				nooo.queue_free()

			qq += str(find_node("asfqgwq",bool(randi()%2),bool(randi()%2)))
			qq += str(find_parent("fqwfqwgf a"))

			qq += str(get_child(randi() % 1000 - 500))
			qq += str(get_child_count())
			qq += str(get_children())
			qq += str(get_groups())
			qq += str(get_index())
			qq += str(get_network_master())
			qq += str(get_node(NodePath("./CPUParticasfasfales_ALL")))
			qq += str(get_node_and_resource(NodePath("./CPUPartasfasfasficles_ALL")))
			qq += str(get_node_or_null(NodePath("./CPUPaasfasfacles_ALL")))
			qq += str(get_parent())
			qq += str(get_path())
			qq += str(get_path_to(get_parent()))
			qq += str(get_physics_process_delta_time())
			qq += str(get_position_in_parent())
			qq += str(get_process_delta_time())
			qq += str(get_scene_instance_load_placeholder())
			qq += str(get_tree())
			qq += str(get_viewport())

			qq += str(has_node(NodePath("awgasfafaagfa")))
			qq += str(has_node_and_resource(NodePath("awgfasfasfagfa")))

			qq += str(is_a_parent_of(self))
			qq += str(is_displayed_folded())
			qq += str(is_greater_than(get_parent()))
			qq += str(is_in_group("asfafqaw"))
			qq += str(is_inside_tree())
			qq += str(is_network_master())
			qq += str(is_physics_processing())
			qq += str(is_physics_processing_internal())
			qq += str(is_processing())
			qq += str(is_processing_input())
			qq += str(is_processing_internal())
			qq += str(is_processing_unhandled_input())
			qq += str(is_processing_unhandled_key_input())

			move_child(get_child(randi() % 1000 - 500),randi() % 1000 - 500)

			#This only spam output
			###print_stray_nodes()
			###print_tree()
			###print_tree_pretty()

			propagate_call("asfafqwtgq",["asfqwag"],bool(randi()%2))
			propagate_notification(randi() % 1000 - 500)

			###queue_free()
			raise()

			###remove_and_skip() ## ?
			var cn = randi() % 1000 - 500
			child_number = get_child(cn)
			if cn >= 0 && cn < get_child_count():
				remove_child(child_number)
				child_number.queue_free()
			remove_from_group("asfqwtg")

			replace_by(get_child(randi() % 1000 - 500),bool(randi()%2))
			request_ready()

			qq += str(rpc("asfqwgag"))
			rpc_config("agfqwege",randi() % 1000 - 500)
			qq += str(rpc_id(randi() % 1000 - 500,"asfqwqt"))
			qq += str(rpc_unreliable("asfqwgtq"))
			qq += str(rpc_unreliable_id(randi() % 1000 - 500,"asfqwfqw"))

			rset("afqwfasf", CubeMesh.new())
			rset_config("agfqwege",randi() % 1000 - 500)
			rset_id(randi() % 1000 - 500, "faqawfwqa",CubeMesh.new())
			rset_unreliable("asfqwgtq", CubeMesh.new())
			rset_unreliable_id(randi() % 1000 - 500,"asfqwfqw",CubeMesh.new())

			set_display_folded(bool(randi()%2))
			set_network_master(randi() % 1000 - 500,bool(randi()%2))
			set_physics_process(bool(randi()%2))
			set_physics_process_internal(bool(randi()%2))
			###set_process(bool(randi()%2))
			set_process_input(bool(randi()%2))
			set_process_internal(bool(randi()%2))
			###set_process_priority(randi() % 1000 - 500)
			set_process_unhandled_input(bool(randi()%2))
			set_process_unhandled_key_input(bool(randi()%2))
			set_scene_instance_load_placeholder(bool(randi()%2))


			#Object
			###qq += str(_get("astaf"))
			###qq += str(_get_property_list())
			###_init()
			###_notification(randi()%50)
			###qq += str(_set("SAasa",TextEdit.new()))
			###qq += str(_to_string())
			
			add_user_signal("asfqasffq" + str(counter_temp))

			qq += str(call("empty"))
			qq += str(call_deferred("empty"))
			qq += str(callv("empty2",[randi() % 1000 - 500,randi() % 1000 - 500,randi() % 1000 - 500,randi() % 1000 - 500,randi() % 1000 - 500]))

			qq += str(can_translate_messages())
			qq += str(connect("script_changed",self,"get",["emfafpty"],randi() % 1000 - 500)) # ConnectFlags
			disconnect("script_c1251hanged",self,"get")
			qq += str(emit_signal("script_ch125anged"))
			###free()

			qq += str(get("afasfq"))
			qq += str(get_class())
			qq += str(get_incoming_connections())
			qq += str(get_indexed("asfafqw"))
			qq += str(get_instance_id())
			if.has_meta("asfqwfag"):
				qq += str(get_meta("asfqwfag"))
			qq += str(get_meta_list())
			qq += str(get_method_list())
			qq += str(get_property_list())
			qq += str(get_script())
			qq += str(get_signal_connection_list("script_changed"))
			qq += str(get_signal_list())

			qq += str(has_meta("asfasfas"))
			qq += str(has_method("asfasfas"))
			qq += str(has_user_signal("asfasfas"))

			qq += str(is_blocking_signals())
			qq += str(is_class("asfasfas"))
			qq += str(is_connected("script_changed",self,"get"))
			qq += str(is_queued_for_deletion())

			#Better do not touch this
			#for i in range(2000):
			#	print(i)
			#	if (i != 10)&&(i != 11)&&(i != 41):
			#		notification(i,bool(randi()%2))
			###notification(randi()%1000,bool(randi()%2))
			property_list_changed_notify()
			remove_meta("afqwqwasfaar")
	
			set("qfafaasffdc",CubeMesh.new())
			set_block_signals(bool(randi()%2))
			set_deferred("asasfafqwfq",CubeMesh.new())
			set_indexed("asfasfqwfqw",CubeMesh.new())
			set_message_translation(bool(randi()%2))
			set_meta("fsafassfafwqa", CubeMesh.new())
			#set_script(Reference.new())
			
			qq += str(to_string())
			qq += str(tr("asfqwasfasfqwt        "))
