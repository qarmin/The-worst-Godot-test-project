extends Node2D

var q_InputEventAction : InputEventAction = InputEventAction.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_InputEventAction = InputEventAction.new()

		if randi() % 2 == 1:
				q_InputEventAction.set_action(Autoload.get_string())
		if randi() % 2 == 1:
				q_InputEventAction.set_pressed(Autoload.get_bool())
		if randi() % 2 == 1:
				q_InputEventAction.set_strength(Autoload.get_float())
