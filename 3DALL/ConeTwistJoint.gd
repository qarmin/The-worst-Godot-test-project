extends ConeTwistJoint3D

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_ConeTwistJoint3D: ConeTwistJoint3D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_ConeTwistJoint3D)
		AutoObjects.A_Node(q_ConeTwistJoint3D)
		AutoObjects.A_Node3D(q_ConeTwistJoint3D)
		AutoObjects.A_Joint3D(q_ConeTwistJoint3D)

	if randi() % 2 == 1:
		_set_swing_span(Autoload.get_float())
	if randi() % 2 == 1:
		_set_twist_span(Autoload.get_float())
	if randi() % 2 == 1:
		set_param(Autoload.get_int(), Autoload.get_float())
