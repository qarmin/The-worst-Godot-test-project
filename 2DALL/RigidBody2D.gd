extends RigidBody2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _physics_process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq

	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		for i in get_children():
			if i.get_name().begins_with("Collision"):
				i.set_disabled(bool(randi()%2))
				i.set_shape(i.get_shape())
				i.set_one_way_collision(bool(randi()%2))
				i.set_one_way_collision_margin(randf() * 50)

		set_mode(randi()%4)
		set_mass(randf() * 50)
		set_inertia(randf() * 50)
		set_weight(randf() * 50)
		#Deprecated set_friction(randf())
		#Deprecated set_bounce(randf())
		set_physics_material_override(get_physics_material_override())
		set_gravity_scale(randf() * 50)
		set_use_custom_integrator(bool(randi()%2))
		set_continuous_collision_detection_mode(randi()%3)
		set_max_contacts_reported(randi()%50)
		set_contact_monitor(bool(randi()%2))
		set_sleeping(bool(randi()%2))
		set_can_sleep(bool(randi()%2))
		set_linear_velocity(Vector2(randf() * 50,randf() * 50))
		set_linear_damp(randf() * 50)
		set_angular_velocity(randf() * 50)
		set_angular_damp(randf() * 50)
		set_applied_force(Vector2(randf() * 50,randf() * 50))
		set_applied_torque(randf() * 50)

		#_integrate_forces()

		add_central_force(Vector2(randf() * 50,randf() * 50))
		add_force(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50))
		add_torque(randf() * 50)
		apply_central_impulse(Vector2(randf() * 50,randf() * 50))
		apply_impulse(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50))
		apply_torque_impulse(randf() * 50)

		set_axis_velocity(Vector2(randf() * 50,randf() * 50))
		if contact_monitor:
			qq += str(get_colliding_bodies())
		#BBBBBBBBBBBBBBBBBBBBBBBBBBBqq += str(test_motion(Vector2(randf() * 50,randf() * 50)))
		
		
		## With Errors
		if Autoload.WRONG_BUGS:
			for i in get_children():
				if i.get_name().begins_with("Collision"):
					i.set_disabled(bool(randi()%2))
					i.set_shape(i.get_shape())
					i.set_one_way_collision(bool(randi()%2))
					i.set_one_way_collision_margin(randf() * 50)
	
			set_mode(randi() % 1000 - 500)
			set_mass(randf() * 1000 - 500)
			set_inertia(randf() * 1000 - 500)
			set_weight(randf() * 1000 - 500)
			set_friction(randf() * 1000 - 500)
			set_bounce(randf() * 1000 - 500)
			set_gravity_scale(randf() * 1000 - 500)
			set_use_custom_integrator(bool(randi()%2))
			set_continuous_collision_detection_mode(randi() % 1000 - 500)
			set_max_contacts_reported(randi() % 1000 - 500)
			set_contact_monitor(bool(randi()%2))
			set_sleeping(bool(randi()%2))
			set_can_sleep(bool(randi()%2))
			set_linear_velocity(Vector2(randf() * 1000 - 500, randf() * 1000 - 500))
			set_linear_damp(randf() * 1000 - 500)
			set_angular_velocity(randf() * 1000 - 500)
			set_angular_damp(randf() * 1000 - 500)
			set_applied_force(Vector2(randf() * 1000 - 500, randf() * 1000 - 500))
			set_applied_torque(randf() * 1000 - 500)
	
			#_integrate_forces()
	
			add_central_force(Vector2(randf() * 1000 - 500, randf() * 1000 - 500))
			add_force(Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500))
			add_torque(randf() * 1000 - 500)
			apply_central_impulse(Vector2(randf() * 1000 - 500, randf() * 1000 - 500))
			apply_impulse(Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500))
			apply_torque_impulse(randf() * 1000 - 500)
	
			set_axis_velocity(Vector2(randf() * 1000 - 500, randf() * 1000 - 500))
			#BBBBBBBBBBBBBBBBBBBBBBBBBBBqq += str(test_motion(Vector2(randf() * 1000 - 500, randf() * 1000 - 500)))