extends Node2D

var q_SphereMesh : SphereMesh = SphereMesh.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_SphereMesh = SphereMesh.new()

		if randi() % 2 == 1:
			q_SphereMesh.set_radius(Autoload.get_float())
		if randi() % 2 == 1:
			q_SphereMesh.set_height(Autoload.get_float())
		if randi() % 2 == 1:
			q_SphereMesh.set_radial_segments(Autoload.get_inti(5)) 
		if randi() % 2 == 1:
			q_SphereMesh.set_rings(Autoload.get_inti(5))
		if randi() % 2 == 1:
			q_SphereMesh.set_is_hemisphere(Autoload.get_bool())
