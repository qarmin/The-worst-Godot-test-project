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
		if !Autoload.RANDI:
			pass
		
#		var q_VisualScriptCustomNode : VisualScriptCustomNode = VisualScriptCustomNode.new()
#
#		q_VisualScriptCustomNode._get_caption()
#		q_VisualScriptCustomNode._get_category()
#		q_VisualScriptCustomNode._get_input_value_port_count()
#		q_VisualScriptCustomNode._get_input_value_port_name( 0 )
#		q_VisualScriptCustomNode._get_input_value_port_type( 0 )
#		q_VisualScriptCustomNode._get_output_sequence_port_count()
#		q_VisualScriptCustomNode._get_output_sequence_port_text( 0 )
#		q_VisualScriptCustomNode._get_output_value_port_count()
#		q_VisualScriptCustomNode._get_output_value_port_name( 0 )
#		q_VisualScriptCustomNode._get_output_value_port_type( 0 )
#		q_VisualScriptCustomNode._get_text()
#		q_VisualScriptCustomNode._get_working_memory_size()
#		q_VisualScriptCustomNode._has_input_sequence_port()
#		q_VisualScriptCustomNode._step( [12,124],[1242,12244], randi() % 4124, [12242,122244] )
#
#		if Autoload.WRONG_BUGS:
#			pass
