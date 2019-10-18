extends FileDialog

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
		AutoControlAcceptDialog.nodeFunction(self)
		AutoControlConfirmationDialog.nodeFunction(self)
		nodeFunction(self)

func nodeFunction(q_FileDialog : FileDialog) -> void:

		if randi() % 2 == 1:
			q_FileDialog.set_mode_overrides_title(Autoload.get_bool())
		if randi() % 2 == 1:
			q_FileDialog.set_mode(Autoload.get_int())
		if randi() % 2 == 1:
			q_FileDialog.set_access(Autoload.get_int())
		if randi() % 2 == 1:
			q_FileDialog.set_filters(Autoload.get_poolstringarray())
		if randi() % 2 == 1:
			q_FileDialog.set_show_hidden_files(Autoload.get_bool())
		if randi() % 2 == 1:
			q_FileDialog.set_current_dir("res://TEMP/" + Autoload.get_string())
		if randi() % 2 == 1:
			q_FileDialog.set_current_file("res://TEMP/" + Autoload.get_string())
		if randi() % 2 == 1:
			q_FileDialog.set_current_path("res://TEMP/" + Autoload.get_string())
		if randi() % 2 == 1:
			q_FileDialog.clear_filters()
		if randi() % 2 == 1:
			q_FileDialog.add_filter(Autoload.get_string())
		if randi() % 2 == 1:
			q_FileDialog.deselect_items()
		if randi() % 2 == 1:
			q_FileDialog.get_line_edit()
		if randi() % 2 == 1:
			q_FileDialog.get_vbox()
		if randi() % 2 == 1:
			q_FileDialog.invalidate()
