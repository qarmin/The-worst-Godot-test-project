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
		
#		var q_InputEvent : InputEvent = InputEvent.new()
#
#		qq += str(q_InputEvent.accumulate( InputEvent.new() ))
#		qq += str(q_InputEvent.as_text())
#		qq += str(q_InputEvent.get_action_strength( "Przyczepia"))
#
#		qq += str(q_InputEvent.is_action( "Trzebic" ))
#		qq += str(q_InputEvent.is_action_pressed( "Widz" ))
#		qq += str(q_InputEvent.is_action_released( "Kosc" ))
#		qq += str(q_InputEvent.is_action_type())
#		qq += str(q_InputEvent.is_echo())
#		qq += str(q_InputEvent.is_pressed())
#
#		qq += str(q_InputEvent.shortcut_match( InputEvent.new()))
#		qq += str(q_InputEvent.xformed_by( Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)), Vector2(randf() * 50,randf() * 50) ))
#
#		if Autoload.WRONG_BUGS:
#			pass
