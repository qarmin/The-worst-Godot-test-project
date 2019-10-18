extends Node2D

var q_InputEventKey : InputEventKey = InputEventKey.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_InputEventKey = InputEventKey.new()

		if randi() % 2 == 1:
			q_InputEventKey.set_pressed(Autoload.get_bool())
		if randi() % 2 == 1:
			q_InputEventKey.set_scancode(Autoload.get_int()) #KeyList
		if randi() % 2 == 1:
			q_InputEventKey.set_unicode(Autoload.get_int())
		if randi() % 2 == 1:
			q_InputEventKey.set_echo(Autoload.get_bool())
		if randi() % 2 == 1:
			Autoload.qq = str(q_InputEventKey.get_scancode_with_modifiers())
