extends Container

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Control(self)
		nodeFunction(self)

func nodeFunction(q_Container : Container) -> void:

	if randi() % 2 == 1:
		q_Container.queue_sort()
	if randi() % 2 == 1:
		q_Container.fit_child_in_rect(q_Container, Autoload.get_rect2())
