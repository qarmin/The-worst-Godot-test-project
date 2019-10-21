extends Node2D

var q_VisualScriptVariableGet : VisualScriptVariableGet = VisualScriptVariableGet.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualScriptVariableGet,true)

func nodeFunction(q_VisualScriptVariableGet : VisualScriptVariableGet, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_VisualScriptVariableGet = VisualScriptVariableGet.new()
	if randi() % 2 == 1:
		AutoResourcesVisualScriptNode.nodeFunction(q_VisualScriptVariableGet)

	if randi() % 2 == 1:
		q_VisualScriptVariableGet.set_variable(Autoload.get_string())
