extends RigidBody

onready var counter : float = Autoload.get_rand_time()

func _physics_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_mode(Autoload.get_int())# Mode
		if randi() % 2 == 1:
			set_mass(Autoload.get_float())
		if randi() % 2 == 1:
			set_weight(Autoload.get_float())
			#Deprecated set_friction(Autoload.get_float())
			#Deprecated set_bounce(Autoload.get_float())
		if randi() % 2 == 1:
			set_physics_material_override(Autoload.loadA("PhysicsMaterial.tres"))
		if randi() % 2 == 1:
			set_gravity_scale(Autoload.get_float())
		if randi() % 2 == 1:
			set_use_custom_integrator(Autoload.get_bool())
		if randi() % 2 == 1:
			set_use_continuous_collision_detection(Autoload.get_bool())
		if randi() % 2 == 1:
			set_max_contacts_reported(Autoload.get_int())
		if randi() % 2 == 1:
			set_contact_monitor(Autoload.get_bool())
		if randi() % 2 == 1:
			set_sleeping(Autoload.get_bool())
		if randi() % 2 == 1:
			set_can_sleep(Autoload.get_bool())
		if randi() % 2 == 1:
			set_axis_lock(Autoload.get_int(),Autoload.get_bool())
		if randi() % 2 == 1:
			set_linear_velocity(Autoload.get_vector3())
		if randi() % 2 == 1:
			set_linear_damp(Autoload.get_float())
		if randi() % 2 == 1:
			set_angular_velocity(Autoload.get_vector3())
		if randi() % 2 == 1:
			set_angular_damp(Autoload.get_float())

			#_integrate_forces()

		if randi() % 2 == 1:
			add_central_force(Autoload.get_vector3())
		if randi() % 2 == 1:
			add_force(Autoload.get_vector3(),Autoload.get_vector3())
		if randi() % 2 == 1:
			add_torque(Autoload.get_vector3())
		if randi() % 2 == 1:
			apply_central_impulse(Autoload.get_vector3())
		if randi() % 2 == 1:
			apply_impulse(Autoload.get_vector3(),Autoload.get_vector3())
		if randi() % 2 == 1:
			apply_torque_impulse(Autoload.get_vector3())

		if randi() % 2 == 1:
			set_axis_velocity(Autoload.get_vector3())
		if randi() % 2 == 1:
			Autoload.qq = str(get_colliding_bodies())
