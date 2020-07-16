extends Node2D

var q_VisualShaderNodeScalarDerivativeFunc: VisualShaderNodeScalarDerivativeFunc = VisualShaderNodeScalarDerivativeFunc.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualShaderNodeScalarDerivativeFunc, true)


func nodeFunction(q_VisualShaderNodeScalarDerivativeFunc: VisualShaderNodeScalarDerivativeFunc, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_VisualShaderNodeScalarDerivativeFunc = VisualShaderNodeScalarDerivativeFunc.new()
	if randi() % 2 == 1:
		AutoResourcesVisualShaderNode.nodeFunction(q_VisualShaderNodeScalarDerivativeFunc)

	if randi() % 2 == 1:
		q_VisualShaderNodeScalarDerivativeFunc.set_function(Autoload.get_int())  #Function
