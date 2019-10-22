extends ScrollContainer

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_ScrollContainer : ScrollContainer) -> void:

	if randi() % 2 == 1:
		AutoControlContainer.nodeFunction(q_ScrollContainer)
		
	if randi() % 2 == 1:
		q_ScrollContainer.set_enable_h_scroll(Autoload.get_bool())
	if randi() % 2 == 1:
		q_ScrollContainer.set_h_scroll(Autoload.get_int())
	if randi() % 2 == 1:
		q_ScrollContainer.set_enable_v_scroll(Autoload.get_bool())
	if randi() % 2 == 1:
		q_ScrollContainer.set_v_scroll(Autoload.get_int())
	if randi() % 2 == 1:
		q_ScrollContainer.set_deadzone(Autoload.get_int())

	if randi() % 2 == 1:
		q_ScrollContainer.get_h_scrollbar()
	if randi() % 2 == 1:
		q_ScrollContainer.get_v_scrollbar()
