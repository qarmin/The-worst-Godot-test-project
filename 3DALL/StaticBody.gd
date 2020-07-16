extends StaticBody3D

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_StaticBody3D: StaticBody3D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_StaticBody3D)
		AutoObjects.A_Node(q_StaticBody3D)
		AutoObjects.A_Node3D(q_StaticBody3D)
		AutoObjects.A_CollisionObject3D(q_StaticBody3D)
		AutoObjects.A_PhysicsBody3D(q_StaticBody3D)

	### START TEMP
	var temp_PhysicsMaterial: PhysicsMaterial = PhysicsMaterial.new()
#?#	AutoResourcesPhysicsMaterial.nodeFunction(temp_PhysicsMaterial)

	### END TEMP

#	if randi() % 2 == 1: #DEPRECATED
#		q_StaticBody3D.set_friction(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_StaticBody3D.set_bounce(Autoload.get_float())
	if randi() % 2 == 1:
		q_StaticBody3D.set_physics_material_override(temp_PhysicsMaterial)
	if randi() % 2 == 1:
		q_StaticBody3D.set_constant_linear_velocity(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_StaticBody3D.set_constant_angular_velocity(Autoload.get_vector3())
