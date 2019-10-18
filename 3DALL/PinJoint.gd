extends PinJoint

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set("params/bias",Autoload.get_float())
		if randi() % 2 == 1:
			set("params/damping",Autoload.get_float())
		if randi() % 2 == 1:
			set("params/impulse_clamp",Autoload.get_float())
