extends PhysicalBone

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_PhysicalBone : PhysicalBone, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_PhysicalBone)
		AutoObjects.A_Node(q_PhysicalBone)
		AutoObjects.A_Spatial(q_PhysicalBone)
		AutoObjects.A_CollisionObject(q_PhysicalBone)
		AutoObjects.A_PhysicsBody(q_PhysicalBone)
		
	if randi() % 2 == 1:
		q_PhysicalBone.set_joint_type(Autoload.get_int()) #JOINT_TYPE
	if randi() % 2 == 1:
		q_PhysicalBone.set_joint_offset(Autoload.get_transform())
	if randi() % 2 == 1:
		q_PhysicalBone.set_body_offset(Autoload.get_transform())
	if randi() % 2 == 1:
		q_PhysicalBone.set_mass(Autoload.get_float())
	if randi() % 2 == 1:
		q_PhysicalBone.set_weight(Autoload.get_float())
	if randi() % 2 == 1:
		q_PhysicalBone.set_friction(Autoload.get_float())
	if randi() % 2 == 1:
		q_PhysicalBone.set_bounce(Autoload.get_float())
	if randi() % 2 == 1:
		q_PhysicalBone.set_gravity_scale(Autoload.get_float())

	if randi() % 2 == 1:
		q_PhysicalBone.get_bone_id()
	if randi() % 2 == 1:
		q_PhysicalBone.get_simulate_physics()
		
	if randi() % 2 == 1:
		q_PhysicalBone.is_simulating_physics()
#	if randi() % 2 == 1: #MISSING
#		q_PhysicalBone.is_static_body()
