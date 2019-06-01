extends RigidBody2D
#
#var counter : float
#const C_COUNTER : Vector2 = Vector2(0.5,1.0)
#var right = false
#
#func _ready():
#	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#func _physics_process(delta) -> void:
#	counter -= delta
#
#	if position.x > 1280:
#		right = false
#	elif position.x < 0:
#		right = true
#
#	if counter <= 0:
#		for i in get_children():
#			if i.get_name().begins_with("Collision"):
#				i.set_disabled(bool(randi()%2))
#				i.set_shape(i.get_shape())
#				i.set_one_way_collision(bool(randi()%2))
#				i.set_one_way_collision_margin(randf() * 50)
#
#		set_mode(randi()%4)
#		set_mass(randf() * 50)
#		set_inertia(randf() * 50)
#		set_weight(randf() * 50)
#		set_friction(randf())
#		set_bounce(randf())
#		set_physics_material_override(get_physics_material_override())
#		set_gravity_scale(randf() * 50)
#		set_use_custom_integrator(bool(randi()%2))
#		set_continuous_collision_detection_mode(randi()%3)
#		set_max_contacts_reported(randi()%50)
#		set_contact_monitor(bool(randi()%2))
#		set_sleeping(bool(randi()%2))
#		set_can_sleep(bool(randi()%2))
#		set_linear_velocity(Vector2(randf() * 50,randf() * 50))
#		set_linear_damp(randf() * 50)
#		set_angular_velocity(randf() * 50)
#		set_angular_damp(randf() * 50)
#		set_applied_force(Vector2(randf() * 50,randf() * 50))
#		set_applied_torque(randf() * 50)
#
#		#_integrate_forces()
#
#		add_central_force(Vector2(randf() * 50,randf() * 50))
#		add_force(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50))
#		add_torque(randf() * 50)
#		apply_central_impulse(Vector2(randf() * 50,randf() * 50))
#		apply_impulse(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50))
#		apply_torque_impulse(randf() * 50)
#
#		set_axis_velocity(Vector2(randf() * 50,randf() * 50))
#		var qq : String = ""
#		if contact_monitor:
#			qq += str(get_colliding_bodies())
#		qq += str(test_motion(Vector2(randf() * 50,randf() * 50)))
#		qq = qq
#
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x