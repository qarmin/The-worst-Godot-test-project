extends MarginContainer

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_MarginContainer : MarginContainer) -> void:
	
	if randi() % 2 == 1:
		AutoControlContainer.nodeFunction(q_MarginContainer)
