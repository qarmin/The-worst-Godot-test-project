extends Node2D

var q_VisualShaderNodeInput : VisualShaderNodeInput = VisualShaderNodeInput.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualShaderNodeInput,true)

func nodeFunction(q_VisualShaderNodeInput : VisualShaderNodeInput, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_VisualShaderNodeInput = VisualShaderNodeInput.new()
	if randi() % 2 == 1:
		AutoResourcesVisualShaderNode.nodeFunction(q_VisualShaderNodeInput)

	if randi() % 2 == 1:
		q_VisualShaderNodeInput.set_input_name(Autoload.get_string())
