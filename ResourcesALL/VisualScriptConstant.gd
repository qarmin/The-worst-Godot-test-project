extends Node2D

var q_VisualScriptConstant: VisualScriptConstant = VisualScriptConstant.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualScriptConstant, true)


func nodeFunction(q_VisualScriptConstant: VisualScriptConstant, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_VisualScriptConstant = VisualScriptConstant.new()
	if randi() % 2 == 1:
		AutoResourcesVisualScriptNode.nodeFunction(q_VisualScriptConstant)

	if randi() % 2 == 1:
		q_VisualScriptConstant.set_constant_type(Autoload.get_int())  #VARIANT_MAX
	if randi() % 2 == 1:
		q_VisualScriptConstant.set_constant_value(Autoload.get_vector2())
