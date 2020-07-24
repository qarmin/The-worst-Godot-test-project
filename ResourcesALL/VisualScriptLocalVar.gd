extends Node2D

var q_VisualScriptLocalVar: VisualScriptLocalVar = VisualScriptLocalVar.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualScriptLocalVar, true)


func nodeFunction(q_VisualScriptLocalVar: VisualScriptLocalVar, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_VisualScriptLocalVar = VisualScriptLocalVar.new()
	if randi() % 2 == 1:
		AutoResourcesVisualScriptNode.nodeFunction(q_VisualScriptLocalVar)

	if randi() % 2 == 1:
		q_VisualScriptLocalVar.set_var_name(Autoload.get_string())
	if randi() % 2 == 1:
		q_VisualScriptLocalVar.set_var_type(Autoload.get_int())
