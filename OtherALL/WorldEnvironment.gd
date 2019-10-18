extends WorldEnvironment

onready var counter : float = Autoload.get_rand_time()

	queue_free()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			if Autoload.SLOW_FUNCTIONS:
				set_environment(Autoload.loadA("DefaultEnv.tres"))
