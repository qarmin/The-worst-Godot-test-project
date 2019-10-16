extends Node2D

var q_BoxShape : BoxShape = BoxShape.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_BoxShape = BoxShape.new()

		if randi() % 2 == 1:
			q_BoxShape.set_extents(Autoload.get_vector3())
