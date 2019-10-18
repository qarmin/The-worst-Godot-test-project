extends Node2D

var q_VisualShaderNodeColorFunc : VisualShaderNodeColorFunc = VisualShaderNodeColorFunc.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualShaderNodeColorFunc = VisualShaderNodeColorFunc.new()

		if randi() % 2 == 1:
			q_VisualShaderNodeColorFunc.set_function(Autoload.get_int()) #Function
