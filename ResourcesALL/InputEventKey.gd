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
		
		var q_InputEventKey : InputEventKey = InputEventKey.new()
		if !Autoload.RANDI:
			
			q_InputEventKey.set_pressed(bool(randi()%2))
			q_InputEventKey.set_scancode(randi()%33554432) #KeyList
			q_InputEventKey.set_unicode(randi()%50)
			q_InputEventKey.set_echo(bool(randi()%2))
			qq += str(q_InputEventKey.get_scancode_with_modifiers())
			
			if Autoload.WRONG_BUGS:
				q_InputEventKey.set_pressed(bool(randi()%2))
				q_InputEventKey.set_scancode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #KeyList
				q_InputEventKey.set_unicode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_InputEventKey.set_echo(bool(randi()%2))
				qq += str(q_InputEventKey.get_scancode_with_modifiers())

		else: #RANDI
			if randi() % 2 == 1:
				q_InputEventKey.set_pressed(bool(randi()%2))
			if randi() % 2 == 1:
				q_InputEventKey.set_scancode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #KeyList
			if randi() % 2 == 1:
				q_InputEventKey.set_unicode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_InputEventKey.set_echo(bool(randi()%2))
			if randi() % 2 == 1:
				qq += str(q_InputEventKey.get_scancode_with_modifiers())
