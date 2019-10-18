extends Node2D

var q_InputEventPanGesture : InputEventPanGesture = InputEventPanGesture.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_InputEventPanGesture = InputEventPanGesture.new()

		if randi() % 2 == 1:
			q_InputEventPanGesture.set_delta(Autoload.get_vector2())
