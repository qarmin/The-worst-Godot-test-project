extends RigidBody2D

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Node2D(self)
		AutoObjects.A_CollisionObject2D(self)
		AutoObjects.A_PhysicsBody2D(self)
		nodeFunction(self)

func nodeFunction(q_RigidBody2D : RigidBody2D) -> void:

	if randi() % 2 == 1:
		q_RigidBody2D.set_mode(Autoload.get_int())
	if randi() % 2 == 1:
		q_RigidBody2D.set_mass(Autoload.get_float())
	if randi() % 2 == 1:
		q_RigidBody2D.set_inertia(Autoload.get_float())
	if randi() % 2 == 1:
		q_RigidBody2D.set_weight(Autoload.get_float())
	if randi() % 2 == 1:
		q_RigidBody2D.set_friction(Autoload.get_float())
	if randi() % 2 == 1:
		q_RigidBody2D.set_bounce(Autoload.get_float())
	if randi() % 2 == 1:
		q_RigidBody2D.set_gravity_scale(Autoload.get_float())
	if randi() % 2 == 1:
		q_RigidBody2D.set_physics_material_override(Autoload.loadA("PhysicsMaterial.tres"))
	if randi() % 2 == 1:
		q_RigidBody2D.set_use_custom_integrator(Autoload.get_bool())
	if randi() % 2 == 1:
		q_RigidBody2D.set_continuous_collision_detection_mode(Autoload.get_int())
	if randi() % 2 == 1:
		q_RigidBody2D.set_max_contacts_reported(Autoload.get_int())
	if randi() % 2 == 1:
		q_RigidBody2D.set_contact_monitor(Autoload.get_bool())
	if randi() % 2 == 1:
		q_RigidBody2D.set_sleeping(Autoload.get_bool())
	if randi() % 2 == 1:
		q_RigidBody2D.set_can_sleep(Autoload.get_bool())
	if randi() % 2 == 1:
		q_RigidBody2D.set_linear_velocity(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_RigidBody2D.set_linear_damp(Autoload.get_float())
	if randi() % 2 == 1:
		q_RigidBody2D.set_angular_velocity(Autoload.get_float())
	if randi() % 2 == 1:
		q_RigidBody2D.set_angular_damp(Autoload.get_float())
	if randi() % 2 == 1:
		q_RigidBody2D.set_applied_force(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_RigidBody2D.set_applied_torque(Autoload.get_float())

	###q_RigidBody2D._integrate_forces()

	if randi() % 2 == 1:
		q_RigidBody2D.add_central_force(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_RigidBody2D.add_force(Autoload.get_vector2(),Autoload.get_vector2())
	if randi() % 2 == 1:
		q_RigidBody2D.add_torque(Autoload.get_float())
	if randi() % 2 == 1:
		q_RigidBody2D.apply_central_impulse(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_RigidBody2D.apply_impulse(Autoload.get_vector2(),Autoload.get_vector2())
	if randi() % 2 == 1:
		q_RigidBody2D.apply_torque_impulse(Autoload.get_float())

	if randi() % 2 == 1:
		q_RigidBody2D.set_axis_velocity(Autoload.get_vector2())
	if Autoload.SLOW_FUNCTIONS:
		if randi() % 2 == 1:
			q_RigidBody2D.test_motion(Autoload.get_vector2())
