extends Node2D

var q_VisualShaderNodeGlobalExpression: VisualShaderNodeGlobalExpression = VisualShaderNodeGlobalExpression.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualShaderNodeGlobalExpression, true)


func nodeFunction(q_VisualShaderNodeGlobalExpression: VisualShaderNodeGlobalExpression, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_VisualShaderNodeGlobalExpression = VisualShaderNodeGlobalExpression.new()
	if randi() % 2 == 1:
		AutoResourcesVisualShaderNodeExpression.nodeFunction(q_VisualShaderNodeGlobalExpression)
