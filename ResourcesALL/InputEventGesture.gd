extends Node2D

var q_InputEventGesture: InputEventGesture = InputEventMagnifyGesture.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_InputEventGesture, true)


func nodeFunction(q_InputEventGesture: InputEventGesture, can_reset: bool = false) -> void:
#	if can_reset:
#		if randi() % 2 == 1:
#			q_InputEventGesture = InputEventGesture.new()
	if randi() % 2 == 1:
		AutoResourcesInputEventWithModifiers.nodeFunction(q_InputEventGesture)

	if randi() % 2 == 1:
		q_InputEventGesture.set_position(Autoload.get_vector2())
