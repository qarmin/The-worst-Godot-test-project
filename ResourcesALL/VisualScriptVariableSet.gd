extends Node2D

var q_VisualScriptVariableSet : VisualScriptVariableSet = VisualScriptVariableSet.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualScriptVariableSet = VisualScriptVariableSet.new()

		if randi() % 2 == 1:
			q_VisualScriptVariableSet.set_variable(Autoload.get_string())
