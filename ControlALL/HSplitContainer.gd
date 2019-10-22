extends HSplitContainer

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_HSplitContainer : HSplitContainer) -> void:
	
	if randi() % 2 == 1:
		AutoControlContainer.nodeFunction(q_HSplitContainer)
		AutoObjects.A_SplitContainer(q_HSplitContainer)
