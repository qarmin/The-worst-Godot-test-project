extends PhysicalBone3D

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_PhysicalBone3D: PhysicalBone3D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_PhysicalBone3D)
		AutoObjects.A_Node(q_PhysicalBone3D)
		AutoObjects.A_Node3D(q_PhysicalBone3D)
		AutoObjects.A_CollisionObject3D(q_PhysicalBone3D)
		AutoObjects.A_PhysicsBody3D(q_PhysicalBone3D)

	if randi() % 2 == 1:
		q_PhysicalBone3D.set_joint_type(Autoload.get_int())  #JOINT_TYPE
	if randi() % 2 == 1:
		q_PhysicalBone3D.set_joint_offset(Autoload.get_transform())
	if randi() % 2 == 1:
		q_PhysicalBone3D.set_body_offset(Autoload.get_transform())
	if randi() % 2 == 1:
		q_PhysicalBone3D.set_mass(Autoload.get_float())
	if randi() % 2 == 1:
		q_PhysicalBone3D.set_weight(Autoload.get_float())
	if randi() % 2 == 1:
		q_PhysicalBone3D.set_friction(Autoload.get_float())
	if randi() % 2 == 1:
		q_PhysicalBone3D.set_bounce(Autoload.get_float())
	if randi() % 2 == 1:
		q_PhysicalBone3D.set_gravity_scale(Autoload.get_float())

	if randi() % 2 == 1:
		q_PhysicalBone3D.get_bone_id()
	if randi() % 2 == 1:
		q_PhysicalBone3D.get_simulate_physics()

	if randi() % 2 == 1:
		q_PhysicalBone3D.is_simulating_physics()
#	if randi() % 2 == 1: #MISSING
#		q_PhysicalBone3D.is_static_body()
