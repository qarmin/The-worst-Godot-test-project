extends Node2D

var q_InputEventMagnifyGesture : InputEventMagnifyGesture = InputEventMagnifyGesture.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_InputEventMagnifyGesture = InputEventMagnifyGesture.new()

		if randi() % 2 == 1:
			q_InputEventMagnifyGesture.set_factor(Autoload.get_float())
