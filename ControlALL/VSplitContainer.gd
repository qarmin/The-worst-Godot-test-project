extends VSplitContainer

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Control(self)
		AutoControlContainer.nodeFunction(self)
		AutoObjects.A_SplitContainer(self)
		nodeFunction(self)

func nodeFunction(q_VSplitContainer : VSplitContainer) -> void:
	pass
