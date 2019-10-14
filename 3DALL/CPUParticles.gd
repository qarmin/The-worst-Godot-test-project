extends CPUParticles

var counter : float
var counter_temp : int = 0
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

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
		var particles : Particles = Particles.new()
		if randi() % 2 == 1:
			set_emitting(Autoload.get_bool())
		if randi() % 2 == 1:
			set_amount(randi() % 4 - 2)
		if randi() % 2 == 1:
			set_lifetime(randf() - 0.5)
		if randi() % 2 == 1:
			set_one_shot(Autoload.get_bool())
		if randi() % 2 == 1:
			set_pre_process_time(randf() * 1 - 0.5)
		if randi() % 2 == 1:
			set_speed_scale(Autoload.get_float())
		if randi() % 2 == 1:
			set_explosiveness_ratio(Autoload.get_float())
		if randi() % 2 == 1:
			set_randomness_ratio(Autoload.get_float())
		if randi() % 2 == 1:
			set_fixed_fps(Autoload.get_int())
		if randi() % 2 == 1:
			set_fractional_delta(Autoload.get_bool())
		if randi() % 2 == 1:
			set_use_local_coordinates(Autoload.get_bool())
		if randi() % 2 == 1:
			set_draw_order(Autoload.get_int())
		if randi() % 2 == 1:
			set_mesh(Mesh.new())
		if randi() % 2 == 1:
			set_emission_shape(Autoload.get_int())
		if randi() % 2 == 1:
			set_emission_sphere_radius(Autoload.get_float())
		if randi() % 2 == 1:
			set_emission_box_extents(Autoload.get_vector3())
		if randi() % 2 == 1:
			set_emission_points(Autoload.get_poolvector3array())
		if randi() % 2 == 1:
			set_emission_normals(Autoload.get_poolvector3array())
		if randi() % 2 == 1:
			set_emission_colors([Autoload.get_color(),Autoload.get_color()])

		if randi() % 2 == 1:
			set_particle_flag(Autoload.get_int(),Autoload.get_bool())
				
		if randi() % 2 == 1:
			set_spread(Autoload.get_float())
		if randi() % 2 == 1:
			set_flatness(Autoload.get_float())
		if randi() % 2 == 1:
			set_gravity(Autoload.get_vector3())

		if randi() % 2 == 1:
			set_param(Autoload.get_int(),Autoload.get_float())
		if randi() % 2 == 1:
			set_param_curve(Autoload.get_int(),Autoload.loadA("Curve.tres"))
		if randi() % 2 == 1:
			set_param_randomness(Autoload.get_int(),Autoload.get_float())

		if randi() % 2 == 1:
			convert_from_particles(particles)
		if randi() % 2 == 1:
			restart()
		particles.queue_free()
			
#			if Autoload.SLOW_FUNCTIONS:
#				##GeometryInstance
#				set_material_override(SpatialMaterial.new())
#				set_cast_shadows_setting(randi() % (SHADOW_CASTING_SETTING_SHADOWS_ONLY + 1))
#				set_extra_cull_margin(Autoload.get_float())
#
#				set_flag(Autoload.get_int(),Autoload.get_bool())
#
#				set_lod_min_distance(Autoload.get_float())
#				set_lod_min_hysteresis(Autoload.get_float())
#				set_lod_max_distance(Autoload.get_float())
#				set_lod_max_hysteresis(Autoload.get_float())
#				set_custom_aabb(Autoload.get_aabb())
#
#				##VisualInstance
#				set_layer_mask(randi() % 1000000)
#				qq += str(get_aabb())
#				qq += str(get_base())
#				qq += str(get_instance())
#				qq += str(get_layer_mask_bit(Autoload.get_int()))
#				qq += str(get_transformed_aabb())
#				set_base(RID())
#				set_layer_mask_bit(Autoload.get_int(),Autoload.get_bool())
#
#				##Spatial
#				set_global_transform(Autoload.get_transform())
#				set_translation(Autoload.get_vector3())
#				set_rotation_degrees(Autoload.get_vector3())
#				set_rotation(Autoload.get_vector3())
#				set_scale(Autoload.get_vector3())
#				set_transform(Autoload.get_transform())
#				set_visible(Autoload.get_bool())
#				set_gizmo(SpatialGizmo.new())
#
#				force_update_transform()
#
#				qq += str(get_parent_spatial())
#				qq += str(get_world())
#
#				global_rotate(Autoload.get_vector3(),Autoload.get_float())
#				global_scale(Autoload.get_vector3())
#				global_translate(Autoload.get_vector3())
#
#				hide()
#
#				qq += str(is_local_transform_notification_enabled())
#				qq += str(is_scale_disabled())
#				qq += str(is_set_as_toplevel())
#				qq += str(is_transform_notification_enabled())
#				qq += str(is_visible_in_tree())
#
#				look_at(Vector3(Autoload.get_float() + 4,Autoload.get_float() + 45,Autoload.get_float() + 215),Vector3(Autoload.get_float() + 4,Autoload.get_float() + 45,Autoload.get_float() + 215))
#				look_at_from_position(Vector3(Autoload.get_float() + 4,Autoload.get_float() + 45,Autoload.get_float() + 215),Vector3(Autoload.get_float() + 4,Autoload.get_float() + 45,Autoload.get_float() + 215),Vector3(Autoload.get_float() + 4,Autoload.get_float() + 45,Autoload.get_float() + 215))
#
#				orthonormalize()
#
#				rotate(Vector3(Autoload.get_float() + 150,Autoload.get_float() + 100,Autoload.get_float() + 15),Autoload.get_float() + 10)
#				rotate_object_local(Vector3(Autoload.get_float() + 4,Autoload.get_float() + 45,Autoload.get_float() + 215),Autoload.get_float())
#				rotate_x(Autoload.get_float())
#				rotate_y(Autoload.get_float())
#				rotate_z(Autoload.get_float())
#
#				scale_object_local(Autoload.get_vector3())
#
#				set_as_toplevel(Autoload.get_bool())
#				set_disable_scale(Autoload.get_bool())
#				set_identity()
#				set_ignore_transform_notification(Autoload.get_bool())
#				set_notify_local_transform(Autoload.get_bool())
#				set_notify_transform(Autoload.get_bool())
#
#				show()
#
#				qq += str(to_global(Autoload.get_vector3()))
#				qq += str(to_local(Autoload.get_vector3()))
#
#				translate(Autoload.get_vector3())
#				translate_object_local(Autoload.get_vector3())
#
#				update_gizmo()
#
#				#Node
#				set_pause_mode(randi() % (PAUSE_MODE_PROCESS + 1))
#				set_name(str(Autoload.get_string()) + str(randi() % 2541252))
#				set_filename(str(Autoload.get_string()) + str(randi() % 2541252))
#				set_owner(get_parent())
#				qq += str(get_multiplayer())
#				set_custom_multiplayer(MultiplayerAPI.new())
#
#				###_exit_tree()
#				###_enter_tree()
#				###qq += str(_get_configuration_warning())
#				###_input(InputEventAction.new())
#				###_physics_process(0.0)
#				###_process(0.0)
#				###_ready()
#				###_unhandled_input(InputEventAction.new())
#				###_unhandled_key_input(InputEventKey.new())
#				for _i in range(10):
#					if get_child_count() > 3:
#						break 
#					add_child(TextureButton.new(),Autoload.get_bool())
#				add_child_below_node(get_child(Autoload.get_int()),get_child(Autoload.get_int()),Autoload.get_bool())
#				add_to_group(Autoload.get_string(),Autoload.get_bool())
#
#				qq += str(can_process())
#				var nooo : Node = duplicate(Autoload.get_int()) # DuplicateFlags
#				if nooo != null:
#					nooo.queue_free()
#
#				qq += str(find_node(Autoload.get_string(),Autoload.get_bool(),Autoload.get_bool()))
#				qq += str(find_parent(Autoload.get_string()))
#
#				qq += str(get_child(Autoload.get_int()))
#				qq += str(get_child_count())
#				qq += str(get_children())
#				qq += str(get_groups())
#				qq += str(get_index())
#				qq += str(get_network_master())
#				qq += str(get_node(Autoload.get_nodepath(self)))
#				qq += str(get_node_and_resource(Autoload.get_nodepath(self)))
#				qq += str(get_node_or_null(Autoload.get_nodepath(self)))
#				qq += str(get_parent())
#				qq += str(get_path())
#				qq += str(get_path_to(get_parent()))
#				qq += str(get_physics_process_delta_time())
#				qq += str(get_position_in_parent())
#				qq += str(get_process_delta_time())
#				qq += str(get_scene_instance_load_placeholder())
#				qq += str(get_tree())
#				qq += str(get_viewport())
#
#				qq += str(has_node(Autoload.get_nodepath(self)))
#				qq += str(has_node_and_resource(Autoload.get_nodepath(self)))
#
#				qq += str(is_a_parent_of(self))
#				qq += str(is_displayed_folded())
#				qq += str(is_greater_than(get_parent()))
#				qq += str(is_in_group(Autoload.get_string()))
#				qq += str(is_inside_tree())
#				qq += str(is_network_master())
#				qq += str(is_physics_processing())
#				qq += str(is_physics_processing_internal())
#				qq += str(is_processing())
#				qq += str(is_processing_input())
#				qq += str(is_processing_internal())
#				qq += str(is_processing_unhandled_input())
#				qq += str(is_processing_unhandled_key_input())
#
#				move_child(get_child(Autoload.get_int()),Autoload.get_int())
#
#				#This only spam output
#				###print_stray_nodes()
#				###print_tree()
#				###print_tree_pretty()
#
#				propagate_call(Autoload.get_string(),[Autoload.get_string()],Autoload.get_bool())
#				propagate_notification(Autoload.get_int())
#
#				###queue_free()
#				raise()
#
#				###remove_and_skip() ## ?
#				var child_number = get_child(randi() % get_child_count())
#				var cn = Autoload.get_int()
#				child_number = get_child(cn)
#				if cn >= 0 && cn < get_child_count():
#					remove_child(child_number)
#					child_number.queue_free()
#				remove_from_group(Autoload.get_string())
#
#				replace_by(get_child(Autoload.get_int()),Autoload.get_bool())
#				request_ready()
#
#				qq += str(rpc(Autoload.get_string()))
#				rpc_config(Autoload.get_string(),Autoload.get_int())
#				qq += str(rpc_id(Autoload.get_int(),Autoload.get_string()))
#				qq += str(rpc_unreliable(Autoload.get_string()))
#				qq += str(rpc_unreliable_id(Autoload.get_int(),Autoload.get_string()))
#
#				rset(Autoload.get_string(), CubeMesh.new())
#				rset_config(Autoload.get_string(),Autoload.get_int())
#				rset_id(Autoload.get_int(), Autoload.get_string(),CubeMesh.new())
#				rset_unreliable(Autoload.get_string(), CubeMesh.new())
#				rset_unreliable_id(Autoload.get_int(),Autoload.get_string(),CubeMesh.new())
#
#				set_display_folded(Autoload.get_bool())
#				set_network_master(Autoload.get_int(),Autoload.get_bool())
#				set_physics_process(Autoload.get_bool())
#				set_physics_process_internal(Autoload.get_bool())
#				###set_process(Autoload.get_bool())
#				set_process_input(Autoload.get_bool())
#				set_process_internal(Autoload.get_bool())
#				###set_process_priority(Autoload.get_int())
#				set_process_unhandled_input(Autoload.get_bool())
#				set_process_unhandled_key_input(Autoload.get_bool())
#				set_scene_instance_load_placeholder(Autoload.get_bool())
#
#
#				#Object
#				###qq += str(_get(Autoload.get_string()))
#				###qq += str(_get_property_list())
#				###_init()
#				###_notification(Autoload.get_int())
#				###qq += str(_set(Autoload.get_string(),TextEdit.new()))
#				###qq += str(_to_string())
#
#				add_user_signal(Autoload.get_string() + str(counter_temp))
#
#				qq += str(call(Autoload.get_string()))
#				qq += str(call_deferred(Autoload.get_string()))
#				qq += str(callv(Autoload.get_string(),[Autoload.get_int(),Autoload.get_int(),Autoload.get_int(),Autoload.get_int(),Autoload.get_int()]))
#
#				qq += str(can_translate_messages())
#				qq += str(connect(Autoload.get_string(),self,Autoload.get_string(),[Autoload.get_string()],Autoload.get_int())) # ConnectFlags
#				disconnect(Autoload.get_string(),self,Autoload.get_string())
#				qq += str(emit_signal(Autoload.get_string()))
#				###free()
#
#				qq += str(get(Autoload.get_string()))
#				qq += str(get_class())
#				qq += str(get_incoming_connections())
#				qq += str(get_indexed(Autoload.get_string()))
#				qq += str(get_instance_id())
#				if.has_meta(Autoload.get_string()):
#					qq += str(get_meta(Autoload.get_string()))
#				qq += str(get_meta_list())
#				qq += str(get_method_list())
#				qq += str(get_property_list())
#				qq += str(get_script())
#				qq += str(get_signal_connection_list(Autoload.get_string()))
#				qq += str(get_signal_list())
#
#				qq += str(has_meta(Autoload.get_string()))
#				qq += str(has_method(Autoload.get_string()))
#				qq += str(has_user_signal(Autoload.get_string()))
#
#				qq += str(is_blocking_signals())
#				qq += str(is_class(Autoload.get_string()))
#				qq += str(is_connected(Autoload.get_string(),self,Autoload.get_string()))
#				qq += str(is_queued_for_deletion())
#
#				#Better do not touch this BUG
#				#for i in range(2000):
#				#	print(i)
#				#	if (i != 10)&&(i != 11)&&(i != 41):
#				#		notification(i,Autoload.get_bool())
#				###notification(randi()%1000,Autoload.get_bool())
#				property_list_changed_notify()
#				remove_meta(Autoload.get_string())
#
#				set(Autoload.get_string(),CubeMesh.new())
#				set_block_signals(Autoload.get_bool())
#				set_deferred(Autoload.get_string(),CubeMesh.new())
#				set_indexed(Autoload.get_string(),CubeMesh.new())
#				set_message_translation(Autoload.get_bool())
#				set_meta(Autoload.get_string(), CubeMesh.new())
#				#set_script(Reference.new())
#
#				qq += str(to_string())
#				qq += str(tr(Autoload.get_string()))
				
