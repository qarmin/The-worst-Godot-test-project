extends Node2D

var q_PlaneShape : PlaneShape = PlaneShape.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_PlaneShape = PlaneShape.new()

		if randi() % 2 == 1:
			q_PlaneShape.set_plane(Autoload.get_plane())
