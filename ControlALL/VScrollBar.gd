extends VScrollBar

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_VScrollBar: VScrollBar, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_VScrollBar)
		AutoObjects.A_Node(q_VScrollBar)
		AutoObjects.A_CanvasItem(q_VScrollBar)
		AutoObjects.A_Control(q_VScrollBar)
		AutoObjects.A_Range(q_VScrollBar)
		AutoObjects.A_ScrollBar(q_VScrollBar)
