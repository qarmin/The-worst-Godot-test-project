extends Node2D

var q_InputEventJoypadMotion : InputEventJoypadMotion = InputEventJoypadMotion.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_InputEventJoypadMotion = InputEventJoypadMotion.new()

		if randi() % 2 == 1:
			q_InputEventJoypadMotion.set_axis(Autoload.get_int()) #JoystickList
		if randi() % 2 == 1:
			q_InputEventJoypadMotion.set_axis_value(Autoload.get_float())
