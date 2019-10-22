extends CanvasModulate

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_CanvasModulate : CanvasModulate, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_CanvasModulate)
		AutoObjects.A_Node(q_CanvasModulate)
		AutoObjects.A_CanvasItem(q_CanvasModulate)
		AutoObjects.A_Node2D(q_CanvasModulate)
		
	if randi() % 2 == 1:
		q_CanvasModulate.set_color(Autoload.get_color())
