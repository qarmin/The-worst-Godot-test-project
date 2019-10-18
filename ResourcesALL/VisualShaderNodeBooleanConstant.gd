extends Node2D

var q_VisualShaderNodeBooleanConstant : VisualShaderNodeBooleanConstant = VisualShaderNodeBooleanConstant.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualShaderNodeBooleanConstant = VisualShaderNodeBooleanConstant.new()

		if randi() % 2 == 1:
			q_VisualShaderNodeBooleanConstant.set_constant(Autoload.get_bool())
