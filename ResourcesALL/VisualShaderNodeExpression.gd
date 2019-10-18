extends Node2D

var q_VisualShaderNodeExpression : VisualShaderNodeExpression = VisualShaderNodeExpression.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualShaderNodeExpression = VisualShaderNodeExpression.new()

		if randi() % 2 == 1:
			q_VisualShaderNodeExpression.set_expression(Autoload.get_string())

		if randi() % 2 == 1:
			q_VisualShaderNodeExpression.build()
