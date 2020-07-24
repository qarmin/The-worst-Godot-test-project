extends Node2D

var q_InputEventScreenTouch: InputEventScreenTouch = InputEventScreenTouch.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_InputEventScreenTouch, true)


func nodeFunction(q_InputEventScreenTouch: InputEventScreenTouch, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_InputEventScreenTouch = InputEventScreenTouch.new()
	if randi() % 2 == 1:
		AutoResourcesInputEvent.nodeFunction(q_InputEventScreenTouch)

	if randi() % 2 == 1:
		q_InputEventScreenTouch.set_index(Autoload.get_int())
	if randi() % 2 == 1:
		q_InputEventScreenTouch.set_position(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_InputEventScreenTouch.set_pressed(Autoload.get_bool())
