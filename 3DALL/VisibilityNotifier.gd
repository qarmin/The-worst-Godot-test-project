extends VisibilityNotifier

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_Spatial(self)
		nodeFunction(self)

func nodeFunction(q_VisibilityNotifier : VisibilityNotifier) -> void:

	if randi() % 2 == 1:
		q_VisibilityNotifier.set_aabb(Autoload.get_aabb())
	if randi() % 2 == 1:
		q_VisibilityNotifier.is_on_screen()
