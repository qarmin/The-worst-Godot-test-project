extends Node2D

var q_InputEventMagnifyGesture: InputEventMagnifyGesture = InputEventMagnifyGesture.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_InputEventMagnifyGesture, true)


func nodeFunction(q_InputEventMagnifyGesture: InputEventMagnifyGesture, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_InputEventMagnifyGesture = InputEventMagnifyGesture.new()
	if randi() % 2 == 1:
		AutoResourcesInputEventGesture.nodeFunction(q_InputEventMagnifyGesture)

	if randi() % 2 == 1:
		q_InputEventMagnifyGesture.set_factor(Autoload.get_float())
