extends ViewportContainer

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_ViewportContainer : ViewportContainer, can_reset : bool = false) -> void:
	
	if randi() % 2 == 1:
		AutoControlContainer.nodeFunction(q_ViewportContainer)

	if randi() % 2 == 1:
		q_ViewportContainer.set_stretch(Autoload.get_bool())
	if randi() % 2 == 1:
		q_ViewportContainer.set_stretch_shrink(Autoload.get_int())
