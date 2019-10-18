extends AcceptDialog

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
		AutoControlWindowDialog.nodeFunction(self)
		nodeFunction(self)

func nodeFunction(q_AcceptDialog : AcceptDialog) -> void:

		if randi() % 2 == 1:
			q_AcceptDialog.set_text(Autoload.get_string())
		if randi() % 2 == 1:
			q_AcceptDialog.set_hide_on_ok(Autoload.get_bool())
			#LEAK q_AcceptDialog.add_button(Autoload.get_string(), Autoload.get_bool()))
			#LEAK q_AcceptDialog.add_cancel(Autoload.get_string()))
		if randi() % 2 == 1:
			q_AcceptDialog.get_label()
		if randi() % 2 == 1:
			q_AcceptDialog.get_ok()
		if randi() % 2 == 1:
			q_AcceptDialog.register_text_enter(q_AcceptDialog)
