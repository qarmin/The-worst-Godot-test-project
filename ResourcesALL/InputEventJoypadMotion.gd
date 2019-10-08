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
			
		var q_InputEventJoypadMotion : InputEventJoypadMotion = InputEventJoypadMotion.new()
		if !Autoload.RANDI:
			
			q_InputEventJoypadMotion.set_axis(randi() % JOY_BUTTON_MAX) #JoystickList
			q_InputEventJoypadMotion.set_axis_value(randf() * 2 - 1.0)
			
			if Autoload.WRONG_BUGS:
				q_InputEventJoypadMotion.set_axis(randi() % Autoload.RANGE - Autoload.RANGE / 2) #JoystickList
				q_InputEventJoypadMotion.set_axis_value(randf() * Autoload.RANGE - Autoload.RANGE / 2)

		else: #RANDI
			if randi() % 2 == 1:
				q_InputEventJoypadMotion.set_axis(randi() % Autoload.RANGE - Autoload.RANGE / 2) #JoystickList
			if randi() % 2 == 1:
				q_InputEventJoypadMotion.set_axis_value(randf() * Autoload.RANGE - Autoload.RANGE / 2)
