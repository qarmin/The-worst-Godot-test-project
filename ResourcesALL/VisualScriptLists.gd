extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

#func _ready():
#	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#func _process(delta) -> void:
#	counter -= delta
#	var qq : String = ""
#	qq = qq
#
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
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
