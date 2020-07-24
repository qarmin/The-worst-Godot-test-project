extends ProgressBar

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_ProgressBar: ProgressBar, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_ProgressBar)
		AutoObjects.A_Node(q_ProgressBar)
		AutoObjects.A_CanvasItem(q_ProgressBar)
		AutoObjects.A_Control(q_ProgressBar)
		AutoObjects.A_Range(q_ProgressBar)

	if randi() % 2 == 1:
		q_ProgressBar.set_percent_visible(Autoload.get_bool())
