extends Node2D

var q_InputEventScreenDrag : InputEventScreenDrag = InputEventScreenDrag.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_InputEventScreenDrag = InputEventScreenDrag.new()

		if randi() % 2 == 1:
			q_InputEventScreenDrag.set_index(Autoload.get_int())
		if randi() % 2 == 1:
			q_InputEventScreenDrag.set_position(Autoload.get_vector2())
		if randi() % 2 == 1:
			q_InputEventScreenDrag.set_relative(Autoload.get_vector2())
		if randi() % 2 == 1:
			q_InputEventScreenDrag.set_speed(Autoload.get_vector2())
