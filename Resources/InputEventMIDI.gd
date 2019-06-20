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
		
		var q_InputEventMIDI : InputEventMIDI = InputEventMIDI.new()
		
		q_InputEventMIDI.set_channel(randi()%50)
		q_InputEventMIDI.set_message(randi()%50)
		q_InputEventMIDI.set_pitch(randi()%50)
		q_InputEventMIDI.set_velocity(randi()%50)
		q_InputEventMIDI.set_instrument(randi()%50)
		q_InputEventMIDI.set_pressure(randi()%50)
		q_InputEventMIDI.set_controller_number(randi()%50)
		q_InputEventMIDI.set_controller_value(randi()%50)
		
		if Autoload.WRONG_BUGS:
			pass
