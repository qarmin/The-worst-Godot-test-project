extends Node2D

var q_Vector2i: Vector2i = Autoload.get_Vector2i()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Vector2i, true)


func nodeFunction(q_Vector2i: Vector2i, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_Vector2i = Autoload.get_Vector2i()
		if randi() % 2 == 1:
			q_Vector2i = Vector2i(Autoload.get_Vector2())
		if randi() % 2 == 1:
			q_Vector2i = Vector2i(Autoload.get_Vector2i())
		if randi() % 2 == 1:
			q_Vector2i = Vector2i(Autoload.get_float(),Autoload.get_float())
			
	if randi() % 2 == 1:
		q_Vector2i.abs()
	if randi() % 2 == 1:
		q_Vector2i.aspect()
	if randi() % 2 == 1:
		q_Vector2i.sign()
