extends Node2D

var q_InputEventAction: InputEventAction = InputEventAction.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_InputEventAction, true)


func nodeFunction(q_InputEventAction: InputEventAction, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_InputEventAction = InputEventAction.new()
	if randi() % 2 == 1:
		AutoResourcesInputEvent.nodeFunction(q_InputEventAction)

	if randi() % 2 == 1:
		q_InputEventAction.set_action(Autoload.get_string())
	if randi() % 2 == 1:
		q_InputEventAction.set_pressed(Autoload.get_bool())
	if randi() % 2 == 1:
		q_InputEventAction.set_strength(Autoload.get_float())
