extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

#func _ready():
#	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

#func _process(delta) -> void:
#	counter -= delta
#	var qq : String = ""
#	qq = qq
#
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#		var q_InputEvent : InputEvent = InputEventAction.new()
#
#		qq += str(q_InputEvent.accumulate( InputEventAction.new() ))
#		qq += str(q_InputEvent.as_text())
#		qq += str(q_InputEvent.get_action_strength( Autoload.get_string()))
#
#		qq += str(q_InputEvent.is_action( Autoload.get_string() ))
#		qq += str(q_InputEvent.is_action_pressed( Autoload.get_string() ))
#		qq += str(q_InputEvent.is_action_released( Autoload.get_string() ))
#		qq += str(q_InputEvent.is_action_type())
#		qq += str(q_InputEvent.is_echo())
#		qq += str(q_InputEvent.is_pressed())
#
#		qq += str(q_InputEvent.shortcut_match( InputEventAction.new()))
#		qq += str(q_InputEvent.xformed_by( Autoload.get_transform2d(), Autoload.get_vector2() ))
#
