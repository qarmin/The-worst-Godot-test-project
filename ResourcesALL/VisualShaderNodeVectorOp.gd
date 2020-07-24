extends Node2D

var q_VisualShaderNodeVectorOp: VisualShaderNodeVectorOp = VisualShaderNodeVectorOp.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualShaderNodeVectorOp, true)


func nodeFunction(q_VisualShaderNodeVectorOp: VisualShaderNodeVectorOp, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_VisualShaderNodeVectorOp = VisualShaderNodeVectorOp.new()
	if randi() % 2 == 1:
		AutoResourcesVisualShaderNode.nodeFunction(q_VisualShaderNodeVectorOp)

	if randi() % 2 == 1:
		q_VisualShaderNodeVectorOp.set_operator(Autoload.get_int())  #Operator
