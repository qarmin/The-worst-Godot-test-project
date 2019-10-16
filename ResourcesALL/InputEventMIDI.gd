extends Node2D

var q_InputEventMIDI : InputEventMIDI = InputEventMIDI.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_InputEventMIDI = InputEventMIDI.new()

		if randi() % 2 == 1:
			q_InputEventMIDI.set_channel(Autoload.get_int())
		if randi() % 2 == 1:
			q_InputEventMIDI.set_message(Autoload.get_int())
		if randi() % 2 == 1:
			q_InputEventMIDI.set_pitch(Autoload.get_int())
		if randi() % 2 == 1:
			q_InputEventMIDI.set_velocity(Autoload.get_int())
		if randi() % 2 == 1:
			q_InputEventMIDI.set_instrument(Autoload.get_int())
		if randi() % 2 == 1:
			q_InputEventMIDI.set_pressure(Autoload.get_int())
		if randi() % 2 == 1:
			q_InputEventMIDI.set_controller_number(Autoload.get_int())
		if randi() % 2 == 1:
			q_InputEventMIDI.set_controller_value(Autoload.get_int())
