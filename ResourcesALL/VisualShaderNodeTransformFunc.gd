extends Node2D

var q_VisualShaderNodeTransformFunc : VisualShaderNodeTransformFunc = VisualShaderNodeTransformFunc.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualShaderNodeTransformFunc = VisualShaderNodeTransformFunc.new()

		if randi() % 2 == 1:
			q_VisualShaderNodeTransformFunc.set_function(Autoload.get_int()) # Function
