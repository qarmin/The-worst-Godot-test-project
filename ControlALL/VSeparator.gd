extends VSeparator

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_VSeparator : VSeparator, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_VSeparator)
		AutoObjects.A_Node(q_VSeparator)
		AutoObjects.A_CanvasItem(q_VSeparator)
		AutoObjects.A_Control(q_VSeparator)
		AutoObjects.A_Separator(q_VSeparator)
