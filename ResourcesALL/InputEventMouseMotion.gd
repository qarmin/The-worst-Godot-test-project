extends Node2D

var q_InputEventMouseMotion: InputEventMouseMotion = InputEventMouseMotion.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_InputEventMouseMotion, true)


func nodeFunction(q_InputEventMouseMotion: InputEventMouseMotion, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_InputEventMouseMotion = InputEventMouseMotion.new()
	if randi() % 2 == 1:
		AutoResourcesInputEventMouse.nodeFunction(q_InputEventMouseMotion)

	if randi() % 2 == 1:
		q_InputEventMouseMotion.set_relative(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_InputEventMouseMotion.set_speed(Autoload.get_vector2())
