extends Node2D

var q_VisualShaderNodeVec3Constant : VisualShaderNodeVec3Constant = VisualShaderNodeVec3Constant.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualShaderNodeVec3Constant = VisualShaderNodeVec3Constant.new()

		if randi() % 2 == 1:
			q_VisualShaderNodeVec3Constant.set_constant(Autoload.get_vector3())
