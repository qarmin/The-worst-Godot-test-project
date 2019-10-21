extends Node2D

var q_ConcavePolygonShape : ConcavePolygonShape = ConcavePolygonShape.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_ConcavePolygonShape,true)

func nodeFunction(q_ConcavePolygonShape : ConcavePolygonShape, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_ConcavePolygonShape = ConcavePolygonShape.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_ConcavePolygonShape)

	if randi() % 2 == 1:
		q_ConcavePolygonShape.get_faces()
	if randi() % 2 == 1:
		q_ConcavePolygonShape.set_faces(Autoload.get_poolvector3array())
