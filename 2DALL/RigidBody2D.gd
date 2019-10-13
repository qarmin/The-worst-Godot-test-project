extends RigidBody2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _physics_process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq

	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

		if randi() % 2 == 1:
			set_mode(Autoload.get_int())
		if randi() % 2 == 1:
			set_mass(Autoload.get_float())
		if randi() % 2 == 1:
			set_inertia(Autoload.get_float())
		if randi() % 2 == 1:
			set_weight(Autoload.get_float())
		if randi() % 2 == 1:
			set_friction(Autoload.get_float())
		if randi() % 2 == 1:
			set_bounce(Autoload.get_float())
		if randi() % 2 == 1:
			set_gravity_scale(Autoload.get_float())
		if randi() % 2 == 1:
			set_physics_material_override(Autoload.loadA("PhysicsMaterial.tres"))
		if randi() % 2 == 1:
			set_use_custom_integrator(Autoload.get_bool())
		if randi() % 2 == 1:
			set_continuous_collision_detection_mode(Autoload.get_int())
		if randi() % 2 == 1:
			set_max_contacts_reported(Autoload.get_int())
		if randi() % 2 == 1:
			set_contact_monitor(Autoload.get_bool())
		if randi() % 2 == 1:
			set_sleeping(Autoload.get_bool())
		if randi() % 2 == 1:
			set_can_sleep(Autoload.get_bool())
		if randi() % 2 == 1:
			set_linear_velocity(Vector2(Autoload.get_float(), Autoload.get_float()))
		if randi() % 2 == 1:
			set_linear_damp(Autoload.get_float())
		if randi() % 2 == 1:
			set_angular_velocity(Autoload.get_float())
		if randi() % 2 == 1:
			set_angular_damp(Autoload.get_float())
		if randi() % 2 == 1:
			set_applied_force(Vector2(Autoload.get_float(), Autoload.get_float()))
		if randi() % 2 == 1:
			set_applied_torque(Autoload.get_float())
	
			#_integrate_forces()
	
		if randi() % 2 == 1:
			add_central_force(Vector2(Autoload.get_float(), Autoload.get_float()))
		if randi() % 2 == 1:
			add_force(Vector2(Autoload.get_float(), Autoload.get_float()),Vector2(Autoload.get_float(), Autoload.get_float()))
		if randi() % 2 == 1:
			add_torque(Autoload.get_float())
		if randi() % 2 == 1:
			apply_central_impulse(Vector2(Autoload.get_float(), Autoload.get_float()))
		if randi() % 2 == 1:
			apply_impulse(Vector2(Autoload.get_float(), Autoload.get_float()),Vector2(Autoload.get_float(), Autoload.get_float()))
		if randi() % 2 == 1:
			apply_torque_impulse(Autoload.get_float())
	
		if randi() % 2 == 1:
			set_axis_velocity(Vector2(Autoload.get_float(), Autoload.get_float()))
		if randi() % 2 == 1:
			if Autoload.SLOW_FUNCTIONS:
				qq += str(test_motion(Vector2(Autoload.get_float(), Autoload.get_float())))
