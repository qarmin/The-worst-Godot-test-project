extends Node2D

var q_VisualShaderNode : VisualShaderNode = VisualShaderNodeBooleanConstant.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualShaderNode,true)

func nodeFunction(q_VisualShaderNode : VisualShaderNode, can_reset : bool = false) -> void:
	
#	if can_reset:
#		if randi() % 2 == 1:
#			q_VisualShaderNode = VisualShaderNode.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_VisualShaderNode)

		
	if randi() % 2 == 1:
		q_VisualShaderNode.set_output_port_for_preview(Autoload.get_int())
	if randi() % 2 == 1:
		q_VisualShaderNode._set_default_input_values(Autoload.get_array())

	if randi() % 2 == 1:
		q_VisualShaderNode.get_input_port_default_value( Autoload.get_int())
	if randi() % 2 == 1:
		q_VisualShaderNode.set_input_port_default_value( Autoload.get_int(), Autoload.get_int())

