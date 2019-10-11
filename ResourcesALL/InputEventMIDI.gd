extends Node2D

var q_InputEventMIDI : InputEventMIDI = InputEventMIDI.new()
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
			q_InputEventMIDI = InputEventMIDI.new()
			
		
		if randi() % 2 == 1:
			q_InputEventMIDI.set_channel(Autoload.get_randi())
		if randi() % 2 == 1:
			q_InputEventMIDI.set_message(Autoload.get_randi())
		if randi() % 2 == 1:
			q_InputEventMIDI.set_pitch(Autoload.get_randi())
		if randi() % 2 == 1:
			q_InputEventMIDI.set_velocity(Autoload.get_randi())
		if randi() % 2 == 1:
			q_InputEventMIDI.set_instrument(Autoload.get_randi())
		if randi() % 2 == 1:
			q_InputEventMIDI.set_pressure(Autoload.get_randi())
		if randi() % 2 == 1:
			q_InputEventMIDI.set_controller_number(Autoload.get_randi())
		if randi() % 2 == 1:
			q_InputEventMIDI.set_controller_value(Autoload.get_randi())
