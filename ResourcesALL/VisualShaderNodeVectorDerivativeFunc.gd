extends Node2D

var q_VisualShaderNodeVectorDerivativeFunc : VisualShaderNodeVectorDerivativeFunc = VisualShaderNodeVectorDerivativeFunc.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualShaderNodeVectorDerivativeFunc,true)

func nodeFunction(q_VisualShaderNodeVectorDerivativeFunc : VisualShaderNodeVectorDerivativeFunc, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_VisualShaderNodeVectorDerivativeFunc = VisualShaderNodeVectorDerivativeFunc.new()
	if randi() % 2 == 1:
		AutoResourcesVisualShaderNode.nodeFunction(q_VisualShaderNodeVectorDerivativeFunc)

	if randi() % 2 == 1:
		q_VisualShaderNodeVectorDerivativeFunc.set_function(Autoload.get_int()) #Function
