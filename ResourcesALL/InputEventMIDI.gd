extends Node2D

var q_InputEventMIDI: InputEventMIDI = InputEventMIDI.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_InputEventMIDI, true)


func nodeFunction(q_InputEventMIDI: InputEventMIDI, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_InputEventMIDI = InputEventMIDI.new()
	if randi() % 2 == 1:
		AutoResourcesInputEvent.nodeFunction(q_InputEventMIDI)

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
