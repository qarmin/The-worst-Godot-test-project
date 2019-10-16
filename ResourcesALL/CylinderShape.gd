extends Node2D

var q_CylinderShape : CylinderShape = CylinderShape.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_CylinderShape = CylinderShape.new()

		if randi() % 2 == 1:
			q_CylinderShape.set_radius(Autoload.get_float())
		if randi() % 2 == 1:
			q_CylinderShape.set_height(Autoload.get_float())
