extends WindowDialog

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Control(self)
		AutoControlPopup.nodeFunction(self)
		nodeFunction(self)

func nodeFunction(q_WindowDialog : WindowDialog) -> void:

		if randi() % 2 == 1:
			q_WindowDialog.set_title(Autoload.get_string())
		if randi() % 2 == 1:
			q_WindowDialog.set_resizable(Autoload.get_bool())
		if randi() % 2 == 1:
			q_WindowDialog.get_close_button()
