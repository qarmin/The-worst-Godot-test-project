extends Node2D

var q_InputEventMouseButton : InputEventMouseButton = InputEventMouseButton.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_InputEventMouseButton = InputEventMouseButton.new()

		if randi() % 2 == 1:
			q_InputEventMouseButton.set_factor(Autoload.get_float())
		if randi() % 2 == 1:
			q_InputEventMouseButton.set_button_index(Autoload.get_int())
		if randi() % 2 == 1:
			q_InputEventMouseButton.set_pressed(Autoload.get_bool())
		if randi() % 2 == 1:
			q_InputEventMouseButton.set_doubleclick(Autoload.get_bool())
