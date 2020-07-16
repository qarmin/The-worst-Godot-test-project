extends Node2D

var q_VisualScriptBuiltinFunc: VisualScriptBuiltinFunc = VisualScriptBuiltinFunc.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualScriptBuiltinFunc, true)


func nodeFunction(q_VisualScriptBuiltinFunc: VisualScriptBuiltinFunc, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_VisualScriptBuiltinFunc = VisualScriptBuiltinFunc.new()
	if randi() % 2 == 1:
		AutoResourcesVisualScriptNode.nodeFunction(q_VisualScriptBuiltinFunc)

	if randi() % 2 == 1:
		q_VisualScriptBuiltinFunc.set_func(Autoload.get_int())  # BuiltinFunc
