extends Node2D

var q_VisualScriptInputAction : VisualScriptInputAction = VisualScriptInputAction.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualScriptInputAction = VisualScriptInputAction.new()

		if randi() % 2 == 1:
			q_VisualScriptInputAction.set_action_name(Autoload.get_string())
		if randi() % 2 == 1:
			q_VisualScriptInputAction.set_action_mode(Autoload.get_int()) # Mode
