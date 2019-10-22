extends HScrollBar

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_HScrollBar : HScrollBar, can_reset : bool = false) -> void:
	
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_HScrollBar)
		AutoObjects.A_Node(q_HScrollBar)
		AutoObjects.A_CanvasItem(q_HScrollBar)
		AutoObjects.A_Control(q_HScrollBar)
		AutoObjects.A_Range(q_HScrollBar)
		AutoObjects.A_ScrollBar(q_HScrollBar)
