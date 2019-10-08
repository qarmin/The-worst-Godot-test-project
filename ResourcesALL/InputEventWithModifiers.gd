extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

#func _process(delta) -> void:
#	counter -= delta
#	var qq : String = ""
#	qq = qq
#
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#		if !Autoload.RANDI:
#			pass
#
#		var q_InputEventWithModifiers : InputEventWithModifiers = InputEventWithModifiers.new()
#
#		q_InputEventWithModifiers.set_alt(bool(randi()%2))
#		q_InputEventWithModifiers.set_shift(bool(randi()%2))
#		q_InputEventWithModifiers.set_control(bool(randi()%2))
#		q_InputEventWithModifiers.set_metakey(bool(randi()%2))
#		q_InputEventWithModifiers.set_command(bool(randi()%2))
#
#		if Autoload.WRONG_BUGS:
#			pass
