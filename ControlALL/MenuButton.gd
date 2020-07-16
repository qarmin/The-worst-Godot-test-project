extends MenuButton

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_MenuButton: MenuButton, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoControlButton.nodeFunction(q_MenuButton)

	if randi() % 2 == 1:
		q_MenuButton.set_switch_on_hover(Autoload.get_bool())

	if randi() % 2 == 1:
		q_MenuButton.get_popup()
	if randi() % 2 == 1:
		q_MenuButton.set_disable_shortcuts(Autoload.get_bool())
