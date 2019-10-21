extends WorldEnvironment

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		nodeFunction(self)

func nodeFunction(q_WorldEnvironment : WorldEnvironment) -> void:

		if randi() % 2 == 1:
			if Autoload.SLOW_FUNCTIONS:
				q_WorldEnvironment.set_environment(Autoload.loadA("DefaultEnv.tres"))
