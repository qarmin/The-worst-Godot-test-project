extends Node2D

var q_InputEventKey : InputEventKey = InputEventKey.new()
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
		if randi() % 2 == 1:
			q_InputEventKey = InputEventKey.new()
		
		
		if randi() % 2 == 1:
			q_InputEventKey.set_pressed(Autoload.get_bool())
		if randi() % 2 == 1:
			q_InputEventKey.set_scancode(Autoload.get_int()) #KeyList
		if randi() % 2 == 1:
			q_InputEventKey.set_unicode(Autoload.get_int())
		if randi() % 2 == 1:
			q_InputEventKey.set_echo(Autoload.get_bool())
		if randi() % 2 == 1:
			qq += str(q_InputEventKey.get_scancode_with_modifiers())
