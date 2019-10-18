extends Node2D

var q_VisualShaderNodeColorOp : VisualShaderNodeColorOp = VisualShaderNodeColorOp.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualShaderNodeColorOp = VisualShaderNodeColorOp.new()

		if randi() % 2 == 1:
			q_VisualShaderNodeColorOp.set_operator(Autoload.get_int()) # Operator
