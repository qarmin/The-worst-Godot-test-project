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
#		var q_InputEventMouse : InputEventMouse = InputEventMouse.new()
#
#		q_InputEventMouse.set_button_mask(randi() % 257) #ButtonList
#		q_InputEventMouse.set_position(Autoload.get_vector2())
#		q_InputEventMouse.set_global_position(Autoload.get_vector2())
#
