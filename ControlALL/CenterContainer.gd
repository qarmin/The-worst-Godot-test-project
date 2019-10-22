extends CenterContainer

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_CenterContainer : CenterContainer) -> void:
	
	if randi() % 2 == 1:
		AutoControlContainer.nodeFunction(q_CenterContainer)
