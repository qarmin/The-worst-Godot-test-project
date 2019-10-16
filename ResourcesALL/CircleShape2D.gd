extends Node2D

var q_CircleShape2D : CircleShape2D = CircleShape2D.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_CircleShape2D = CircleShape2D.new()

		if randi() % 2 == 1:
			q_CircleShape2D.set_radius(Autoload.get_float())
