extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
#		var q_VisualShaderNode : VisualShaderNode = VisualShaderNode.new()
#
#		q_VisualShaderNode.set_output_port_for_preview(randi()%50)
#		q_VisualShaderNode._set_default_input_values([124,214,124,214])
#
#		q_VisualShaderNode.get_input_port_default_value( randi()%50)
#		q_VisualShaderNode.set_input_port_default_value( randi()%50, randi()%50)
		
		if Autoload.WRONG_BUGS:
			pass
