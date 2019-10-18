extends Node2D

var q_VisualShaderNodeTransformConstant : VisualShaderNodeTransformConstant = VisualShaderNodeTransformConstant.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualShaderNodeTransformConstant = VisualShaderNodeTransformConstant.new()

		if randi() % 2 == 1:
			q_VisualShaderNodeTransformConstant.set_constant(Autoload.get_transform())
