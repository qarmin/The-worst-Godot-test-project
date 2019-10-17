extends ParallaxLayer

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

func nodeFunction(q_ParallaxLayer : ParallaxLayer) -> void:

		if randi() % 2 == 1:
			q_ParallaxLayer.set_motion_scale(Autoload.get_vector2())
		if randi() % 2 == 1:
			q_ParallaxLayer.set_motion_offset(Autoload.get_vector2())
		if randi() % 2 == 1:
			q_ParallaxLayer.set_mirroring(Autoload.get_vector2())
