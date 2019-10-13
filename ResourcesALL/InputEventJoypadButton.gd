extends Node2D

var q_InputEventJoypadButton : InputEventJoypadButton = InputEventJoypadButton.new()
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
			q_InputEventJoypadButton = InputEventJoypadButton.new()
		
		
		if randi() % 2 == 1:
			q_InputEventJoypadButton.set_button_index(Autoload.get_int())
		if randi() % 2 == 1:
			q_InputEventJoypadButton.set_pressure(Autoload.get_bool())
		if randi() % 2 == 1:
			q_InputEventJoypadButton.set_pressed(Autoload.get_bool())
