extends HSlider

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_HSlider: HSlider, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_HSlider)
		AutoObjects.A_Node(q_HSlider)
		AutoObjects.A_CanvasItem(q_HSlider)
		AutoObjects.A_Control(q_HSlider)
		AutoObjects.A_Range(q_HSlider)
		AutoObjects.A_Slider(q_HSlider)
