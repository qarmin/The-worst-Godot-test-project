extends Node2D

var q_VisualShaderNodeVectorOp : VisualShaderNodeVectorOp = VisualShaderNodeVectorOp.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualShaderNodeVectorOp = VisualShaderNodeVectorOp.new()

		if randi() % 2 == 1:
			q_VisualShaderNodeVectorOp.set_operator(Autoload.get_int()) #Operator
