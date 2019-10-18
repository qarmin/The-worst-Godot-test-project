extends ConeTwistJoint

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			_set_swing_span(Autoload.get_float())
		if randi() % 2 == 1:
			_set_twist_span(Autoload.get_float())
		if randi() % 2 == 1:
			set_param(Autoload.get_int(), Autoload.get_float())
