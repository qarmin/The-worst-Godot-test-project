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
#
#		var q_VisualScriptLists : VisualScriptLists = VisualScriptLists.new()
#		q_VisualScriptLists.add_input_data_port(Autoload.get_int(), Autoload.get_string(), Autoload.get_int())
#		q_VisualScriptLists.add_output_data_port(Autoload.get_int(), Autoload.get_string(), Autoload.get_int())
#		q_VisualScriptLists.remove_input_data_port(Autoload.get_int())
#		q_VisualScriptLists.remove_output_data_port(Autoload.get_int())
#		q_VisualScriptLists.set_input_data_port_name(Autoload.get_int(), Autoload.get_string())
#		q_VisualScriptLists.set_input_data_port_type(Autoload.get_int(), Autoload.get_int())
#		q_VisualScriptLists.set_output_data_port_name(Autoload.get_int(), Autoload.get_string())
#		q_VisualScriptLists.set_output_data_port_type(Autoload.get_int(), Autoload.get_int())
