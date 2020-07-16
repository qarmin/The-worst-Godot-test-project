extends CheckButton

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_CheckButton: CheckButton, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoControlButton.nodeFunction(q_CheckButton)
	return
