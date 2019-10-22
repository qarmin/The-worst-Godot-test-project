extends WindowDialog

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_WindowDialog : WindowDialog, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoControlPopup.nodeFunction(q_WindowDialog)
		
	if randi() % 2 == 1:
		q_WindowDialog.set_title(Autoload.get_string())
	if randi() % 2 == 1:
		q_WindowDialog.set_resizable(Autoload.get_bool())
	if randi() % 2 == 1:
		q_WindowDialog.get_close_button()
