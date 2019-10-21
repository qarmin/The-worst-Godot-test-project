extends LightOccluder2D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Node2D(self)
		nodeFunction(self)

func nodeFunction(q_LightOccluder2D : LightOccluder2D, can_reset : bool = false) -> void:

		if randi() % 2 == 1:
			q_LightOccluder2D.set_occluder_polygon(OccluderPolygon2D.new())
		if randi() % 2 == 1:
			q_LightOccluder2D.set_occluder_light_mask(Autoload.get_int())
