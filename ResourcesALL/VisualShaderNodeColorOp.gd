extends Node2D

var q_VisualShaderNodeColorOp: VisualShaderNodeColorOp = VisualShaderNodeColorOp.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualShaderNodeColorOp, true)


func nodeFunction(q_VisualShaderNodeColorOp: VisualShaderNodeColorOp, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_VisualShaderNodeColorOp = VisualShaderNodeColorOp.new()
	if randi() % 2 == 1:
		AutoResourcesVisualShaderNode.nodeFunction(q_VisualShaderNodeColorOp)

	if randi() % 2 == 1:
		q_VisualShaderNodeColorOp.set_operator(Autoload.get_int())  # Operator
