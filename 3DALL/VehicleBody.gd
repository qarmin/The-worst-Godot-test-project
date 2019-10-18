extends VehicleBody

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

func nodeFunction(q_VehicleBody : VehicleBody) -> void:

	if randi() % 2 == 1:
		q_VehicleBody.set_engine_force(Autoload.get_float())
	if randi() % 2 == 1:
		q_VehicleBody.set_brake(Autoload.get_float())
	if randi() % 2 == 1:
		q_VehicleBody.set_steering(Autoload.get_float())
