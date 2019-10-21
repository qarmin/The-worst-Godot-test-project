extends Node2D

var q_PrismMesh : PrismMesh = PrismMesh.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_PrismMesh,true)

func nodeFunction(q_PrismMesh : PrismMesh, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_PrismMesh = PrismMesh.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_PrismMesh)

	if randi() % 2 == 1:
		q_PrismMesh.set_left_to_right(Autoload.get_float())
	if randi() % 2 == 1:
		q_PrismMesh.set_size(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_PrismMesh.set_subdivide_width(Autoload.get_inti(3)) 
	if randi() % 2 == 1:
		q_PrismMesh.set_subdivide_height(Autoload.get_inti(3)) 
	if randi() % 2 == 1:
		q_PrismMesh.set_subdivide_depth(Autoload.get_inti(3)) 
