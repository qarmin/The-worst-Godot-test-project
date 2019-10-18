extends MenuButton

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Control(self)
		AutoObjects.A_BaseButton(self)
		AutoControlButton.nodeFunction(self)
		nodeFunction(self)

func nodeFunction(q_MenuButton : MenuButton) -> void:

		if randi() % 2 == 1:
			q_MenuButton.set_switch_on_hover(Autoload.get_bool())
		if randi() % 2 == 1:
			q_MenuButton.get_popup()
		if randi() % 2 == 1:
			q_MenuButton.set_disable_shortcuts(Autoload.get_bool())
