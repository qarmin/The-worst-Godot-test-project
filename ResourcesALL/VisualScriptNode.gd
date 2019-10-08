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
		
#		var q_VisualScriptNode : VisualScriptNode = VisualScriptNode.new()
#
#		q_VisualScriptNode.get_default_input_value( 0 )
#		q_VisualScriptNode.get_visual_script()
#
#		q_VisualScriptNode.ports_changed_notify()
#		q_VisualScriptNode.set_default_input_value( 0, String() )
#
#		if Autoload.WRONG_BUGS:
#			pass
