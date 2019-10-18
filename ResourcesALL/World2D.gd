extends Node2D

var q_World2D : World2D = World2D.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_World2D = World2D.new()

		if randi() % 2 == 1:
			Autoload.qq = str(q_World2D.get_canvas())
		if randi() % 2 == 1:
			Autoload.qq = str(q_World2D.get_space())
		if randi() % 2 == 1:
			Autoload.qq = str(q_World2D.get_direct_space_state())
