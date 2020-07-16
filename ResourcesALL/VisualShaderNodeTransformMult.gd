extends Node2D

var q_VisualShaderNodeTransformMult: VisualShaderNodeTransformMult = VisualShaderNodeTransformMult.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualShaderNodeTransformMult, true)


func nodeFunction(q_VisualShaderNodeTransformMult: VisualShaderNodeTransformMult, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_VisualShaderNodeTransformMult = VisualShaderNodeTransformMult.new()
	if randi() % 2 == 1:
		AutoResourcesVisualShaderNode.nodeFunction(q_VisualShaderNodeTransformMult)

	if randi() % 2 == 1:
		q_VisualShaderNodeTransformMult.set_operator(Autoload.get_int())  #Operator
