extends Node2D

var q_InputEventJoypadButton : InputEventJoypadButton = InputEventJoypadButton.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_InputEventJoypadButton = InputEventJoypadButton.new()

		if randi() % 2 == 1:
			q_InputEventJoypadButton.set_button_index(Autoload.get_int())
		if randi() % 2 == 1:
			q_InputEventJoypadButton.set_pressure(Autoload.get_bool())
		if randi() % 2 == 1:
			q_InputEventJoypadButton.set_pressed(Autoload.get_bool())
