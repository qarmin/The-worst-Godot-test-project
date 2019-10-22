extends VehicleBody

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_VehicleBody : VehicleBody, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_VehicleBody)
		AutoObjects.A_Node(q_VehicleBody)
		AutoObjects.A_Spatial(q_VehicleBody)
		AutoObjects.A_CollisionObject(q_VehicleBody)
		AutoObjects.A_PhysicsBody(q_VehicleBody)
		
	if randi() % 2 == 1:
		q_VehicleBody.set_engine_force(Autoload.get_float())
	if randi() % 2 == 1:
		q_VehicleBody.set_brake(Autoload.get_float())
	if randi() % 2 == 1:
		q_VehicleBody.set_steering(Autoload.get_float())
