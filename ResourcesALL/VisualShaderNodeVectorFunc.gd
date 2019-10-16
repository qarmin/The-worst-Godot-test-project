extends Node2D

var q_VisualShaderNodeVectorFunc : VisualShaderNodeVectorFunc = VisualShaderNodeVectorFunc.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualShaderNodeVectorFunc = VisualShaderNodeVectorFunc.new()

		if randi() % 2 == 1:
			q_VisualShaderNodeVectorFunc.set_function(Autoload.get_int()) #Function
