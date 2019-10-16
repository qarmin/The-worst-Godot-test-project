extends Node2D

var q_VisualScriptVariableGet : VisualScriptVariableGet = VisualScriptVariableGet.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualScriptVariableGet = VisualScriptVariableGet.new()

		if randi() % 2 == 1:
			q_VisualScriptVariableGet.set_variable(Autoload.get_string())
