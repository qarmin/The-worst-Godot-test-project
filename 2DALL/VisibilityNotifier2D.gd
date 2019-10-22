extends VisibilityNotifier2D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()
#		nodeFunction(self,true)

func nodeFunction(q_VisibilityNotifier2D : VisibilityNotifier2D, can_reset : bool = false) -> void:
	pass
# BIG MEMORY USAGE
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_VisibilityNotifier2D)
		AutoObjects.A_Node(q_VisibilityNotifier2D)
		AutoObjects.A_CanvasItem(q_VisibilityNotifier2D)
		AutoObjects.A_Node2D(q_VisibilityNotifier2D)

	if Autoload.SLOW_FUNCTIONS:
		if randi() % 2 == 1:
			q_VisibilityNotifier2D.set_rect(Autoload.get_rect2f(10))
	if randi() % 2 == 1:
		q_VisibilityNotifier2D.is_on_screen()
