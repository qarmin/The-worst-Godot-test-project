extends Node2D

var q_CapsuleShape : CapsuleShape = CapsuleShape.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_CapsuleShape = CapsuleShape.new()

		if randi() % 2 == 1:
			q_CapsuleShape.set_radius(Autoload.get_float())
		if randi() % 2 == 1:
			q_CapsuleShape.set_height(Autoload.get_float())
