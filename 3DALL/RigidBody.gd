extends RigidBody

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _physics_process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

		if randi() % 2 == 1:
			set_mode(Autoload.get_randi())# Mode
		if randi() % 2 == 1:
			set_mass(Autoload.get_randf())
		if randi() % 2 == 1:
			set_weight(Autoload.get_randf())
			#Deprecated set_friction(randf())
			#Deprecated set_bounce(randf())
		if randi() % 2 == 1:
			set_physics_material_override(PhysicsMaterial.new())
		if randi() % 2 == 1:
			set_gravity_scale(Autoload.get_randf())
		if randi() % 2 == 1:
			set_use_custom_integrator(bool(randi()%2))
		if randi() % 2 == 1:
			set_use_continuous_collision_detection(bool(randi()%2))
		if randi() % 2 == 1:
			set_max_contacts_reported(Autoload.get_randi())
		if randi() % 2 == 1:
			set_contact_monitor(bool(randi()%2))
		if randi() % 2 == 1:
			set_sleeping(bool(randi()%2))
		if randi() % 2 == 1:
			set_can_sleep(bool(randi()%2))
		if randi() % 2 == 1:
			set_axis_lock(Autoload.get_randi(),bool(randi()%2))
		if randi() % 2 == 1:
			set_linear_velocity(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			set_linear_damp(Autoload.get_randf())
		if randi() % 2 == 1:
			set_angular_velocity(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			set_angular_damp(Autoload.get_randf())
	
			#_integrate_forces()
	
		if randi() % 2 == 1:
			add_central_force(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			add_force(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			add_torque(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			apply_central_impulse(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			apply_impulse(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			apply_torque_impulse(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
	
		if randi() % 2 == 1:
			set_axis_velocity(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(get_colliding_bodies())
