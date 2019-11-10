extends RigidBody

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_RigidBody : RigidBody, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_RigidBody)
		AutoObjects.A_Node(q_RigidBody)
		AutoObjects.A_Spatial(q_RigidBody)
		AutoObjects.A_CollisionObject(q_RigidBody)
		AutoObjects.A_PhysicsBody(q_RigidBody)
		
	### START TEMP
	var temp_PhysicsMaterial : PhysicsMaterial = PhysicsMaterial.new()
#?#	AutoResourcesPhysicsMaterial.nodeFunction(temp_PhysicsMaterial)
	
	### END TEMP
	
	
	
	if randi() % 2 == 1:
		q_RigidBody.set_mode(Autoload.get_int())# Mode
	if randi() % 2 == 1:
		q_RigidBody.set_mass(Autoload.get_float())
	if randi() % 2 == 1:
		q_RigidBody.set_weight(Autoload.get_float())
		#Deprecated q_RigidBody.set_friction(Autoload.get_float())
		#Deprecated q_RigidBody.set_bounce(Autoload.get_float())
	if randi() % 2 == 1:
		q_RigidBody.set_physics_material_override(temp_PhysicsMaterial)
	if randi() % 2 == 1:
		q_RigidBody.set_gravity_scale(Autoload.get_float())
	if randi() % 2 == 1:
		q_RigidBody.set_use_custom_integrator(Autoload.get_bool())
	if randi() % 2 == 1:
		q_RigidBody.set_use_continuous_collision_detection(Autoload.get_bool())
	if randi() % 2 == 1:
		q_RigidBody.set_max_contacts_reported(Autoload.get_int())
	if randi() % 2 == 1:
		q_RigidBody.set_contact_monitor(Autoload.get_bool())
	if randi() % 2 == 1:
		q_RigidBody.set_sleeping(Autoload.get_bool())
	if randi() % 2 == 1:
		q_RigidBody.set_can_sleep(Autoload.get_bool())
	if randi() % 2 == 1:
		q_RigidBody.set_axis_lock(Autoload.get_int(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_RigidBody.set_linear_velocity(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_RigidBody.set_linear_damp(Autoload.get_float())
	if randi() % 2 == 1:
		q_RigidBody.set_angular_velocity(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_RigidBody.set_angular_damp(Autoload.get_float())

		#q_RigidBody._integrate_forces()

	if randi() % 2 == 1:
		q_RigidBody.add_central_force(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_RigidBody.add_force(Autoload.get_vector3(),Autoload.get_vector3())
	if randi() % 2 == 1:
		q_RigidBody.add_torque(Autoload.get_vector3())
		
	if randi() % 2 == 1:
		q_RigidBody.apply_central_impulse(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_RigidBody.apply_impulse(Autoload.get_vector3(),Autoload.get_vector3())
	if randi() % 2 == 1:
		q_RigidBody.apply_torque_impulse(Autoload.get_vector3())

	if randi() % 2 == 1:
		q_RigidBody.set_axis_velocity(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_RigidBody.get_colliding_bodies()
