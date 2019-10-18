extends StaticBody

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_Spatial(self)
		AutoObjects.A_CollisionObject(self)
		AutoObjects.A_PhysicsBody(self)
		nodeFunction(self)

func nodeFunction(q_StaticBody : StaticBody) -> void:

		#Deprecated q_StaticBody.set_friction(Autoload.get_float())
		#Deprecated q_StaticBody.set_bounce(Autoload.get_float())
	if randi() % 2 == 1:
		q_StaticBody.set_physics_material_override(Autoload.loadA("PhysicsMaterial.tres"))
	if randi() % 2 == 1:
		q_StaticBody.set_constant_linear_velocity(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_StaticBody.set_constant_angular_velocity(Autoload.get_vector3())
