extends Node2D

var q_VisualScriptBasicTypeConstant : VisualScriptBasicTypeConstant = VisualScriptBasicTypeConstant.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualScriptBasicTypeConstant,true)

func nodeFunction(q_VisualScriptBasicTypeConstant : VisualScriptBasicTypeConstant, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_VisualScriptBasicTypeConstant = VisualScriptBasicTypeConstant.new()
	if randi() % 2 == 1:
		AutoResourcesVisualScriptNode.nodeFunction(q_VisualScriptBasicTypeConstant)

	if randi() % 2 == 1:
		q_VisualScriptBasicTypeConstant.set_basic_type(Autoload.get_int())
	if randi() % 2 == 1:
		q_VisualScriptBasicTypeConstant.set_basic_type_constant(Autoload.get_string())
