extends ColorRect

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_ColorRect : ColorRect) -> void:
	
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_ColorRect)
		AutoObjects.A_Node(q_ColorRect)
		AutoObjects.A_CanvasItem(q_ColorRect)
		AutoObjects.A_Control(q_ColorRect)

	if randi() % 2 == 1:
		q_ColorRect.set_frame_color(Autoload.get_color())
