extends Node2D

var q_ConvexPolygonShape : ConvexPolygonShape = ConvexPolygonShape.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_ConvexPolygonShape,true)

func nodeFunction(q_ConvexPolygonShape : ConvexPolygonShape, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_ConvexPolygonShape = ConvexPolygonShape.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_ConvexPolygonShape)

	if randi() % 2 == 1:
		q_ConvexPolygonShape.set_points(Autoload.get_poolvector3array())
