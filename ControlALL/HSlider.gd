extends HSlider

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Control(self)
		AutoObjects.A_Range(self)
		AutoObjects.A_Slider(self)
		nodeFunction(self)

func nodeFunction(q_HSlider : HSlider) -> void:
	pass
