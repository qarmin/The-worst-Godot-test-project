extends CanvasGroup

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_CanvasGroup: CanvasGroup, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_CanvasGroup)
		AutoObjects.A_Node(q_CanvasGroup)
		AutoObjects.A_CanvasItem(q_CanvasGroup)
		AutoObjects.A_Node2D(q_CanvasGroup)

	if randi() % 2 == 1:
		q_CanvasGroup.set_fit_margin(Autoload.get_float())
	if randi() % 2 == 1:
		q_CanvasGroup.set_clear_margin(Autoload.get_float())
	if randi() % 2 == 1:
		q_CanvasGroup.set_use_mipmaps(Autoload.get_bool())
 

