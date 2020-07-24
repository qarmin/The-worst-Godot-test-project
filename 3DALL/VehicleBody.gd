extends VehicleBody3D

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_VehicleBody3D: VehicleBody3D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_VehicleBody3D)
		AutoObjects.A_Node(q_VehicleBody3D)
		AutoObjects.A_Node3D(q_VehicleBody3D)
		AutoObjects.A_CollisionObject3D(q_VehicleBody3D)
		AutoObjects.A_PhysicsBody3D(q_VehicleBody3D)

	if randi() % 2 == 1:
		q_VehicleBody3D.set_engine_force(Autoload.get_float())
	if randi() % 2 == 1:
		q_VehicleBody3D.set_brake(Autoload.get_float())
	if randi() % 2 == 1:
		q_VehicleBody3D.set_steering(Autoload.get_float())
