extends Node2D

var q_LineShape2D : LineShape2D = LineShape2D.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_LineShape2D = LineShape2D.new()

		if randi() % 2 == 1:
			q_LineShape2D.set_normal(Autoload.get_vector2())
		if randi() % 2 == 1:
			q_LineShape2D.set_d(Autoload.get_float())
