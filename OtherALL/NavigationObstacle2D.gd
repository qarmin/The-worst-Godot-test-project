extends NavigationObstacle2D

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_NavigationObstacle2D: NavigationObstacle2D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_NavigationObstacle2D)
		AutoObjects.A_Node(q_NavigationObstacle2D)

	if randi() % 2 == 1:
		q_NavigationObstacle2D.get_navigation()
	if randi() % 2 == 1:
		q_NavigationObstacle2D.set_navigation(Autoload.get_nodes(self))
