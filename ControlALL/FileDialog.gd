extends FileDialog

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_mode_overrides_title(Autoload.get_bool())
		if randi() % 2 == 1:
			set_mode(Autoload.get_int())
		if randi() % 2 == 1:
			set_access(Autoload.get_int())
		if randi() % 2 == 1:
			set_filters(Autoload.get_poolstringarray())
		if randi() % 2 == 1:
			set_show_hidden_files(Autoload.get_bool())
		if randi() % 2 == 1:
			set_current_dir("res://TEMP/" + Autoload.get_string())
		if randi() % 2 == 1:
			set_current_file("res://TEMP/" + Autoload.get_string())
		if randi() % 2 == 1:
			set_current_path("res://TEMP/" + Autoload.get_string())
		if randi() % 2 == 1:
			clear_filters()
		if randi() % 2 == 1:
			add_filter(Autoload.get_string())
		if randi() % 2 == 1:
			deselect_items()
		if randi() % 2 == 1:
			Autoload.qq = str(get_line_edit())
		if randi() % 2 == 1:
			Autoload.qq = str(get_vbox())
		if randi() % 2 == 1:
			invalidate()
