extends Node2D

var q_InputEventWithModifiers : InputEventWithModifiers = InputEventMagnifyGesture.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_InputEventWithModifiers,true)

func nodeFunction(q_InputEventWithModifiers : InputEventWithModifiers, can_reset : bool = false) -> void:
	
#	if can_reset:
#		if randi() % 2 == 1:
#			q_InputEventWithModifiers = InputEventWithModifiers.new()
	if randi() % 2 == 1:
		AutoResourcesInputEvent.nodeFunction(q_InputEventWithModifiers)

	if randi() % 2 == 1:
		q_InputEventWithModifiers.set_alt(Autoload.get_bool())
	if randi() % 2 == 1:
		q_InputEventWithModifiers.set_shift(Autoload.get_bool())
	if randi() % 2 == 1:
		q_InputEventWithModifiers.set_control(Autoload.get_bool())
	if randi() % 2 == 1:
		q_InputEventWithModifiers.set_metakey(Autoload.get_bool())
	if randi() % 2 == 1:
		q_InputEventWithModifiers.set_command(Autoload.get_bool())
