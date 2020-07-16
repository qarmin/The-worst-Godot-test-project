extends Node2D

var q_VisualScriptOperator: VisualScriptOperator = VisualScriptOperator.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualScriptOperator, true)


func nodeFunction(q_VisualScriptOperator: VisualScriptOperator, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_VisualScriptOperator = VisualScriptOperator.new()
	if randi() % 2 == 1:
		AutoResourcesVisualScriptNode.nodeFunction(q_VisualScriptOperator)

	if randi() % 2 == 1:
		q_VisualScriptOperator.set_operator(Autoload.get_int())
	if randi() % 2 == 1:
		q_VisualScriptOperator.set_typed(Autoload.get_int())
