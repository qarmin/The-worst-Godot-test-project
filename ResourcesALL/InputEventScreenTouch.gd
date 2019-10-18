extends Node2D

var q_InputEventScreenTouch : InputEventScreenTouch = InputEventScreenTouch.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_InputEventScreenTouch = InputEventScreenTouch.new()

		if randi() % 2 == 1:
			q_InputEventScreenTouch.set_index(Autoload.get_int())
		if randi() % 2 == 1:
			q_InputEventScreenTouch.set_position(Autoload.get_vector2())
		if randi() % 2 == 1:
			q_InputEventScreenTouch.set_pressed(Autoload.get_bool())
