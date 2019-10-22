extends StaticBody

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_StaticBody : StaticBody, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_StaticBody)
		AutoObjects.A_Node(q_StaticBody)
		AutoObjects.A_Spatial(q_StaticBody)
		AutoObjects.A_CollisionObject(q_StaticBody)
		AutoObjects.A_PhysicsBody(q_StaticBody)
		
	if randi() % 2 == 1:
		q_StaticBody.set_friction(Autoload.get_float())
	if randi() % 2 == 1:
		q_StaticBody.set_bounce(Autoload.get_float())
	if randi() % 2 == 1:
		q_StaticBody.set_physics_material_override(Autoload.loadA("PhysicsMaterial.tres"))
	if randi() % 2 == 1:
		q_StaticBody.set_constant_linear_velocity(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_StaticBody.set_constant_angular_velocity(Autoload.get_vector3())
