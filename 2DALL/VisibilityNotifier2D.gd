extends VisibilityNotifier2D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()
# BIG MEMORY USAGE
#		AutoObjects.A_Object(self)
#		AutoObjects.A_Node(self)
#		AutoObjects.A_CanvasItem(self)
#		AutoObjects.A_Node2D(self)
#		nodeFunction(self)

func nodeFunction(q_VisibilityNotifier2D : VisibilityNotifier2D, can_reset : bool = false) -> void:
	if Autoload.SLOW_FUNCTIONS:
		if randi() % 2 == 1:
			q_VisibilityNotifier2D.set_rect(Autoload.get_rect2f(10))
	if randi() % 2 == 1:
		q_VisibilityNotifier2D.is_on_screen()
