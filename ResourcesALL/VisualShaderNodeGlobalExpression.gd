extends Node2D

var q_VisualShaderNodeGlobalExpression : VisualShaderNodeGlobalExpression = VisualShaderNodeGlobalExpression.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualShaderNodeGlobalExpression = VisualShaderNodeGlobalExpression.new()

		if randi() % 2 == 1:
			q_VisualShaderNodeGlobalExpression.editable = Autoload.get_bool()
