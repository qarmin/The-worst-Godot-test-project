extends Node2D

var q_VisualShaderNodeIs: VisualShaderNodeIs = VisualShaderNodeIs.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualShaderNodeIs, true)


func nodeFunction(q_VisualShaderNodeIs: VisualShaderNodeIs, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_VisualShaderNodeIs = VisualShaderNodeIs.new()
	if randi() % 2 == 1:
		AutoResourcesVisualShaderNode.nodeFunction(q_VisualShaderNodeIs)

	if randi() % 2 == 1:
		q_VisualShaderNodeIs.set_function(Autoload.get_int())
