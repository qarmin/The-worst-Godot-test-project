extends Node2D

var q_VisualShaderNodeColorConstant : VisualShaderNodeColorConstant = VisualShaderNodeColorConstant.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualShaderNodeColorConstant,true)

func nodeFunction(q_VisualShaderNodeColorConstant : VisualShaderNodeColorConstant, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_VisualShaderNodeColorConstant = VisualShaderNodeColorConstant.new()
	if randi() % 2 == 1:
		AutoResourcesVisualShaderNode.nodeFunction(q_VisualShaderNodeColorConstant)

	if randi() % 2 == 1:
		q_VisualShaderNodeColorConstant.set_constant(Autoload.get_color())
