extends CanvasModulate

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Node2D(self)
		nodeFunction(self)

func nodeFunction(q_CanvasModulate : CanvasModulate, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		q_CanvasModulate.set_color(Autoload.get_color())
