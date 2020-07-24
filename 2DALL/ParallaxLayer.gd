extends ParallaxLayer

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_ParallaxLayer: ParallaxLayer, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_ParallaxLayer)
		AutoObjects.A_Node(q_ParallaxLayer)
		AutoObjects.A_CanvasItem(q_ParallaxLayer)
		AutoObjects.A_Node2D(q_ParallaxLayer)

	if randi() % 2 == 1:
		q_ParallaxLayer.set_motion_scale(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_ParallaxLayer.set_motion_offset(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_ParallaxLayer.set_mirroring(Autoload.get_vector2())
