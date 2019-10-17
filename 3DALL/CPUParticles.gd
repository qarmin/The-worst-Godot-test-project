extends CPUParticles

onready var counter : float = Autoload.get_rand_time()
var counter_temp : int = 0

func empty():
	pass

func empty2(var rrr, var rqw):

	Autoload.qq = str(rrr)
	Autoload.qq = str(rqw)

func _process(delta) -> void:
	counter -= delta
	counter_temp += 1

	if counter <= 0:
		counter = Autoload.get_rand_time()

		var particles : Particles = Particles.new()
		if randi() % 2 == 1:
			set_emitting(Autoload.get_bool())
		if randi() % 2 == 1:
			set_amount(Autoload.get_inti(5))
		if randi() % 2 == 1:
			set_lifetime(Autoload.get_floatf(1.0))
		if randi() % 2 == 1:
			set_one_shot(Autoload.get_bool())
		if randi() % 2 == 1:
			set_pre_process_time(Autoload.get_floatf(1.0))
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

		if Autoload.SLOW_FUNCTIONS:
			##GeometryInstance
			set_material_override(Autoload.loadA("SpatialMaterial.tres"))
			set_cast_shadows_setting(Autoload.get_int())
			set_extra_cull_margin(Autoload.get_float())

			set_flag(Autoload.get_int(),Autoload.get_bool())

			set_lod_min_distance(Autoload.get_float())
			set_lod_min_hysteresis(Autoload.get_float())
			set_lod_max_distance(Autoload.get_float())
			set_lod_max_hysteresis(Autoload.get_float())
			set_custom_aabb(Autoload.get_aabb())

			##VisualInstance
			set_layer_mask(Autoload.get_int())
			Autoload.qq = str(get_aabb())
			Autoload.qq = str(get_base())
			Autoload.qq = str(get_instance())
			Autoload.qq = str(get_layer_mask_bit(Autoload.get_int()))
			Autoload.qq = str(get_transformed_aabb())
			set_base(RID())
			set_layer_mask_bit(Autoload.get_int(),Autoload.get_bool())

			##Spatial
			set_global_transform(Autoload.get_transform())
			set_translation(Autoload.get_vector3())
			set_rotation_degrees(Autoload.get_vector3())
			set_rotation(Autoload.get_vector3())
			set_scale(Autoload.get_vector3())
			set_transform(Autoload.get_transform())
			set_visible(Autoload.get_bool())
			set_gizmo(SpatialGizmo.new())

			force_update_transform()

			Autoload.qq = str(get_parent_spatial())
			Autoload.qq = str(get_world())

			global_rotate(Autoload.get_vector3(),Autoload.get_float())
			global_scale(Autoload.get_vector3())
			global_translate(Autoload.get_vector3())

			hide()

			Autoload.qq = str(is_local_transform_notification_enabled())
			Autoload.qq = str(is_scale_disabled())
			Autoload.qq = str(is_set_as_toplevel())
			Autoload.qq = str(is_transform_notification_enabled())
			Autoload.qq = str(is_visible_in_tree())

			look_at(Vector3(Autoload.get_float() + 4,Autoload.get_float() + 45,Autoload.get_float() + 215),Vector3(Autoload.get_float() + 4,Autoload.get_float() + 45,Autoload.get_float() + 215))
			look_at_from_position(Vector3(Autoload.get_float() + 4,Autoload.get_float() + 45,Autoload.get_float() + 215),Vector3(Autoload.get_float() + 4,Autoload.get_float() + 45,Autoload.get_float() + 215),Vector3(Autoload.get_float() + 4,Autoload.get_float() + 45,Autoload.get_float() + 215))

			orthonormalize()

			rotate(Vector3(Autoload.get_float() + 150,Autoload.get_float() + 100,Autoload.get_float() + 15),Autoload.get_float() + 10)
			rotate_object_local(Vector3(Autoload.get_float() + 4,Autoload.get_float() + 45,Autoload.get_float() + 215),Autoload.get_float())
			rotate_x(Autoload.get_float())
			rotate_y(Autoload.get_float())
			rotate_z(Autoload.get_float())

			scale_object_local(Autoload.get_vector3())

			set_as_toplevel(Autoload.get_bool())
			set_disable_scale(Autoload.get_bool())
			set_identity()
			set_ignore_transform_notification(Autoload.get_bool())
			set_notify_local_transform(Autoload.get_bool())
			set_notify_transform(Autoload.get_bool())

			show()

			Autoload.qq = str(to_global(Autoload.get_vector3()))
			Autoload.qq = str(to_local(Autoload.get_vector3()))

			translate(Autoload.get_vector3())
			translate_object_local(Autoload.get_vector3())

			update_gizmo()

			#Node


			#Object
			###Autoload.qq = str(_get(Autoload.get_string()))
			###Autoload.qq = str(_get_property_list())
			###_init()
			###_notification(Autoload.get_int())
			###Autoload.qq = str(_set(Autoload.get_string(),TextEdit.new()))
			###Autoload.qq = str(_to_string())

			add_user_signal(Autoload.get_string() + str(counter_temp))

			Autoload.qq = str(call(Autoload.get_string()))
			Autoload.qq = str(call_deferred(Autoload.get_string()))
			Autoload.qq = str(callv(Autoload.get_string(),[Autoload.get_int(),Autoload.get_int(),Autoload.get_int(),Autoload.get_int(),Autoload.get_int()]))

			Autoload.qq = str(can_translate_messages())
			Autoload.qq = str(connect(Autoload.get_string(),self,Autoload.get_string(),[Autoload.get_string()],Autoload.get_int())) # ConnectFlags
			disconnect(Autoload.get_string(),self,Autoload.get_string())
			Autoload.qq = str(emit_signal(Autoload.get_string()))
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

