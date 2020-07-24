extends Node2D

var q_VisualShaderNodeColorFunc: VisualShaderNodeColorFunc = VisualShaderNodeColorFunc.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualShaderNodeColorFunc, true)


func nodeFunction(q_VisualShaderNodeColorFunc: VisualShaderNodeColorFunc, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_VisualShaderNodeColorFunc = VisualShaderNodeColorFunc.new()
	if randi() % 2 == 1:
		AutoResourcesVisualShaderNode.nodeFunction(q_VisualShaderNodeColorFunc)

	if randi() % 2 == 1:
		q_VisualShaderNodeColorFunc.set_function(Autoload.get_int())  #Function
