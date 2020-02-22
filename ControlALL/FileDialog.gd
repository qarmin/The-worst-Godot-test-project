extends FileDialog

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_FileDialog : FileDialog, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoControlConfirmationDialog.nodeFunction(q_FileDialog)
		
	if randi() % 2 == 1:
		q_FileDialog.set_mode_overrides_title(Autoload.get_bool())
	if randi() % 2 == 1:
		q_FileDialog.set_mode(Autoload.get_int())  #Mode
	if randi() % 2 == 1:
		q_FileDialog.set_access(Autoload.get_int()) #Access
	if randi() % 2 == 1:
		q_FileDialog.set_filters(Autoload.get_packedstringarray())
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
