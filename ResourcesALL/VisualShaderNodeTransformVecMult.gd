extends Node2D

var q_VisualShaderNodeTransformVecMult : VisualShaderNodeTransformVecMult = VisualShaderNodeTransformVecMult.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualShaderNodeTransformVecMult,true)

func nodeFunction(q_VisualShaderNodeTransformVecMult : VisualShaderNodeTransformVecMult, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_VisualShaderNodeTransformVecMult = VisualShaderNodeTransformVecMult.new()
	if randi() % 2 == 1:
		AutoResourcesVisualShaderNode.nodeFunction(q_VisualShaderNodeTransformVecMult)

	if randi() % 2 == 1:
		q_VisualShaderNodeTransformVecMult.set_operator(Autoload.get_int()) #Operator
