extends Node2D

var q_ConcavePolygonShape : ConcavePolygonShape = ConcavePolygonShape.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_ConcavePolygonShape = ConcavePolygonShape.new()

		if randi() % 2 == 1:
			Autoload.qq = str(q_ConcavePolygonShape.get_faces())
		if randi() % 2 == 1:
			q_ConcavePolygonShape.set_faces(Autoload.get_poolvector3array())
