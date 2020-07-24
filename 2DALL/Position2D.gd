extends Position2D

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_Position2D: Position2D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Position2D)
		AutoObjects.A_Node(q_Position2D)
		AutoObjects.A_CanvasItem(q_Position2D)
		AutoObjects.A_Node2D(q_Position2D)
