extends Container

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_Container : Container, can_reset : bool = false) -> void:
	
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Container)
		AutoObjects.A_Node(q_Container)
		AutoObjects.A_CanvasItem(q_Container)
		AutoObjects.A_Control(q_Container)

	if randi() % 2 == 1:
		q_Container.queue_sort()
	if randi() % 2 == 1:
		q_Container.fit_child_in_rect(q_Container, Autoload.get_rect2())
