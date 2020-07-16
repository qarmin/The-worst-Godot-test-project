extends Node2D

var q_InputEventMouse: InputEventMouse = InputEventMouseButton.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_InputEventMouse, true)


func nodeFunction(q_InputEventMouse: InputEventMouse, can_reset: bool = false) -> void:
#	if can_reset:
#		if randi() % 2 == 1:
#			q_InputEventMouse = InputEventMouse.new()
	if randi() % 2 == 1:
		AutoResourcesInputEventMouse.nodeFunction(q_InputEventMouse)

	if randi() % 2 == 1:
		q_InputEventMouse.set_button_mask(Autoload.get_int())
	if randi() % 2 == 1:
		q_InputEventMouse.set_position(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_InputEventMouse.set_global_position(Autoload.get_vector2())
