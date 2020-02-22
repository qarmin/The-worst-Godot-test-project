extends Node2D

var q_PolygonPathFinder : PolygonPathFinder = PolygonPathFinder.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_PolygonPathFinder,true)

func nodeFunction(q_PolygonPathFinder : PolygonPathFinder, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_PolygonPathFinder = PolygonPathFinder.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_PolygonPathFinder)

	if randi() % 2 == 1:
		q_PolygonPathFinder.find_path( Autoload.get_vector2(), Autoload.get_vector2())

	if randi() % 2 == 1:
		q_PolygonPathFinder.get_bounds()
	if randi() % 2 == 1:
		q_PolygonPathFinder.get_closest_point( Autoload.get_vector2())
	if randi() % 2 == 1:
		q_PolygonPathFinder.get_intersections( Autoload.get_vector2(), Autoload.get_vector2())
	if randi() % 2 == 1:
		q_PolygonPathFinder.get_point_penalty( Autoload.get_int())

	if randi() % 2 == 1:
		q_PolygonPathFinder.is_point_inside( Autoload.get_vector2())

	if randi() % 2 == 1:
		q_PolygonPathFinder.set_point_penalty(Autoload.get_int(), Autoload.get_float())
	if randi() % 2 == 1:
		q_PolygonPathFinder.setup( Autoload.get_packedvector2array(), Autoload.get_packedintarray())
