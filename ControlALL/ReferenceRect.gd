extends ReferenceRect

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_ReferenceRect : ReferenceRect) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_ReferenceRect)
		AutoObjects.A_Node(q_ReferenceRect)
		AutoObjects.A_CanvasItem(q_ReferenceRect)
		AutoObjects.A_Control(q_ReferenceRect)

	if randi() % 2 == 1:
		q_ReferenceRect.set_border_color(Autoload.get_color())
