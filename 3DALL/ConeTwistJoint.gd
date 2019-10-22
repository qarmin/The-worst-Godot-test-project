extends ConeTwistJoint

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_ConeTwistJoint : ConeTwistJoint, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_ConeTwistJoint)
		AutoObjects.A_Node(q_ConeTwistJoint)
		AutoObjects.A_Spatial(q_ConeTwistJoint)
		AutoObjects.A_Joint(q_ConeTwistJoint)

	if randi() % 2 == 1:
		_set_swing_span(Autoload.get_float())
	if randi() % 2 == 1:
		_set_twist_span(Autoload.get_float())
	if randi() % 2 == 1:
		set_param(Autoload.get_int(), Autoload.get_float())
