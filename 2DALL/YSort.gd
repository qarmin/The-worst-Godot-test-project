extends YSort

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_YSort: YSort, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_YSort)
		AutoObjects.A_Node(q_YSort)
		AutoObjects.A_CanvasItem(q_YSort)
		AutoObjects.A_Node2D(q_YSort)

	if randi() % 2 == 1:
		q_YSort.set_sort_enabled(Autoload.get_bool())
