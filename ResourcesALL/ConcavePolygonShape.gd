extends Node2D

var q_ConcavePolygonShape3D : ConcavePolygonShape3D = ConcavePolygonShape3D.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_ConcavePolygonShape3D,true)

func nodeFunction(q_ConcavePolygonShape3D : ConcavePolygonShape3D, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_ConcavePolygonShape3D = ConcavePolygonShape3D.new()
	if randi() % 2 == 1:
		AutoResourcesShape.nodeFunction(q_ConcavePolygonShape3D)

	if randi() % 2 == 1:
		q_ConcavePolygonShape3D.get_faces()
	if randi() % 2 == 1:
		q_ConcavePolygonShape3D.set_faces(Autoload.get_packedvector3array())
