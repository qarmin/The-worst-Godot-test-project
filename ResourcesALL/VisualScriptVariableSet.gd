extends Node2D

var q_VisualScriptVariableSet: VisualScriptVariableSet = VisualScriptVariableSet.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualScriptVariableSet, true)


func nodeFunction(q_VisualScriptVariableSet: VisualScriptVariableSet, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_VisualScriptVariableSet = VisualScriptVariableSet.new()
	if randi() % 2 == 1:
		AutoResourcesVisualScriptNode.nodeFunction(q_VisualScriptVariableSet)

	if randi() % 2 == 1:
		q_VisualScriptVariableSet.set_variable(Autoload.get_string())
