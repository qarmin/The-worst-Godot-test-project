extends Node2D

var q_VisualShaderNodeCompare : VisualShaderNodeCompare = VisualShaderNodeCompare.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualShaderNodeCompare,true)

func nodeFunction(q_VisualShaderNodeCompare : VisualShaderNodeCompare, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_VisualShaderNodeCompare = VisualShaderNodeCompare.new()
	if randi() % 2 == 1:
		AutoResourcesVisualShaderNode.nodeFunction(q_VisualShaderNodeCompare)

	if randi() % 2 == 1:
		q_VisualShaderNodeCompare.set_comparsion_type(Autoload.get_int()) # ComparsionType
	if randi() % 2 == 1:
		q_VisualShaderNodeCompare.set_function(Autoload.get_int()) # Function
	if randi() % 2 == 1:
		q_VisualShaderNodeCompare.set_condition(Autoload.get_int()) # Condition
