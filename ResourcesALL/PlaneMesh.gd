extends Node2D

var q_PlaneMesh : PlaneMesh = PlaneMesh.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_PlaneMesh = PlaneMesh.new()

		if randi() % 2 == 1:
			q_PlaneMesh.set_size(Autoload.get_vector2())
		if randi() % 2 == 1:
			q_PlaneMesh.set_subdivide_width(Autoload.get_inti(5)) 
		if randi() % 2 == 1:
			q_PlaneMesh.set_subdivide_depth(Autoload.get_inti(5)) 
