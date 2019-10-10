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
#		q_VisualScriptLists.add_input_data_port(randi()%50, "Mniejsza połowa", randi()%50)
#		q_VisualScriptLists.add_output_data_port(randi()%50, "Mniejsza połowa", randi()%50)
#		q_VisualScriptLists.remove_input_data_port(randi()%50)
#		q_VisualScriptLists.remove_output_data_port(randi()%50)
#		q_VisualScriptLists.set_input_data_port_name(randi()%50, "Mniejsza połowa")
#		q_VisualScriptLists.set_input_data_port_type(randi()%50, randi()%50)
#		q_VisualScriptLists.set_output_data_port_name(randi()%50, "Mniejsza połowa")
#		q_VisualScriptLists.set_output_data_port_type(randi()%50, randi()%50)
