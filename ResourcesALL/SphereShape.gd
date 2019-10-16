extends Node2D

var q_SphereShape : SphereShape = SphereShape.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_SphereShape = SphereShape.new()

		if randi() % 2 == 1:
			q_SphereShape.set_radius(Autoload.get_float())
