extends VisibilityNotifier2D

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Node2D(self)
		nodeFunction(self)

func nodeFunction(q_VisibilityNotifier2D : VisibilityNotifier2D) -> void:

		if randi() % 2 == 1:
			q_VisibilityNotifier2D.set_rect(Autoload.get_rect2f(10))
		if randi() % 2 == 1:
			q_VisibilityNotifier2D.is_on_screen()
