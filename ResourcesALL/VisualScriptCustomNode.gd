extends Node2D

onready var counter: float = Autoload.get_rand_time()


#
#
#
func alt_process(delta) -> void:
	pass
#	counter -= delta
#
#
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#		if !Autoload.RANDI:
#			pass
#
#		var q_VisualScriptCustomNode : VisualScriptCustomNode = VisualScriptCustomNode.new()
#
#		q_VisualScriptCustomNode._get_caption()
#		q_VisualScriptCustomNode._get_category()
#		q_VisualScriptCustomNode._get_input_value_port_count()
#		q_VisualScriptCustomNode._get_input_value_port_name( Autoload.get_int())
#		q_VisualScriptCustomNode._get_input_value_port_type( Autoload.get_int())
#		q_VisualScriptCustomNode._get_output_sequence_port_count()
#		q_VisualScriptCustomNode._get_output_sequence_port_text( Autoload.get_int())
#		q_VisualScriptCustomNode._get_output_value_port_count()
#		q_VisualScriptCustomNode._get_output_value_port_name( Autoload.get_int())
#		q_VisualScriptCustomNode._get_output_value_port_type( Autoload.get_int())
#		q_VisualScriptCustomNode._get_text()
#		q_VisualScriptCustomNode._get_working_memory_size()
#		q_VisualScriptCustomNode._has_input_sequence_port()
#		q_VisualScriptCustomNode._step( Autoload.get_array(), Autoload.get_int(), Autoload.get_array())
#
#		if Autoload.WRONG_BUGS:
#			pass
