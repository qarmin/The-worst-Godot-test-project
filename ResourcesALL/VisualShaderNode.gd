extends Node2D

onready var counter : float = Autoload.get_rand_time()

#
#
#
#func _process(delta) -> void:
#	counter -= delta
#
#
#
#	if counter <= 0:
		counter = Autoload.get_rand_time()
#
#		var q_VisualShaderNode : VisualShaderNode = VisualShaderNode.new()
#
#		q_VisualShaderNode.set_output_port_for_preview(Autoload.get_int())
#		q_VisualShaderNode._set_default_input_values([124,214,124,214])
#
#		q_VisualShaderNode.get_input_port_default_value( Autoload.get_int())
#		q_VisualShaderNode.set_input_port_default_value( Autoload.get_int(), Autoload.get_int())
#
