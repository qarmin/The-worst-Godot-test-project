extends Node2D

var q_VisualShaderNodeVectorFunc : VisualShaderNodeVectorFunc = VisualShaderNodeVectorFunc.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualShaderNodeVectorFunc,true)

func nodeFunction(q_VisualShaderNodeVectorFunc : VisualShaderNodeVectorFunc, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_VisualShaderNodeVectorFunc = VisualShaderNodeVectorFunc.new()
	if randi() % 2 == 1:
		AutoResourcesVisualShaderNode.nodeFunction(q_VisualShaderNodeVectorFunc)

	if randi() % 2 == 1:
		q_VisualShaderNodeVectorFunc.set_function(Autoload.get_int()) #Function
