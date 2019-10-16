extends Node2D

var q_VisualShaderNodeTransformMult : VisualShaderNodeTransformMult = VisualShaderNodeTransformMult.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualShaderNodeTransformMult = VisualShaderNodeTransformMult.new()

		if randi() % 2 == 1:
			q_VisualShaderNodeTransformMult.set_operator(Autoload.get_int()) #Operator
