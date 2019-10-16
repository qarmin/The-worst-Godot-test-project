extends Node2D

var q_CubeMesh : CubeMesh = CubeMesh.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_CubeMesh = CubeMesh.new()

		if randi() % 2 == 1:
			q_CubeMesh.set_size(Autoload.get_vector3())
		if randi() % 2 == 1:
			q_CubeMesh.set_subdivide_width(Autoload.get_inti(5)) 
		if randi() % 2 == 1:
			q_CubeMesh.set_subdivide_height(Autoload.get_inti(5)) 
		if randi() % 2 == 1:
			q_CubeMesh.set_subdivide_depth(Autoload.get_inti(5)) 
