extends HSeparator

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_HSeparator : HSeparator) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_HSeparator)
		AutoObjects.A_Node(q_HSeparator)
		AutoObjects.A_CanvasItem(q_HSeparator)
		AutoObjects.A_Control(q_HSeparator)
		AutoObjects.A_Separator(q_HSeparator)
