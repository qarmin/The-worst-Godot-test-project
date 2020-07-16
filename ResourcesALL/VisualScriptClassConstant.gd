extends Node2D

var q_VisualScriptClassConstant: VisualScriptClassConstant = VisualScriptClassConstant.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualScriptClassConstant, true)


func nodeFunction(q_VisualScriptClassConstant: VisualScriptClassConstant, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_VisualScriptClassConstant = VisualScriptClassConstant.new()
	if randi() % 2 == 1:
		AutoResourcesVisualScriptNode.nodeFunction(q_VisualScriptClassConstant)

	if randi() % 2 == 1:
		q_VisualScriptClassConstant.set_base_type(Autoload.get_string())
	if randi() % 2 == 1:
		q_VisualScriptClassConstant.set_class_constant(Autoload.get_string())
