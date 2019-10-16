extends LineEdit

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_text(Autoload.get_string())
		if randi() % 2 == 1:
			set_align(Autoload.get_int())
		if randi() % 2 == 1:
			set_max_length(Autoload.get_int())
		if randi() % 2 == 1:
			set_editable(Autoload.get_bool())
		if randi() % 2 == 1:
			set_secret(Autoload.get_bool())
		if randi() % 2 == 1:
			set_secret_character(Autoload.get_string())
		if randi() % 2 == 1:
			set_expand_to_text_length(Autoload.get_bool())
		if randi() % 2 == 1:
			set_focus_mode(Autoload.get_int())
		if randi() % 2 == 1:
			set_context_menu_enabled(Autoload.get_bool())
		if randi() % 2 == 1:
			set_clear_button_enabled(Autoload.get_bool())
		if randi() % 2 == 1:
			set_placeholder(Autoload.get_string())
		if randi() % 2 == 1:
			set_placeholder_alpha(Autoload.get_float())
		if randi() % 2 == 1:
			cursor_set_blink_enabled(Autoload.get_bool())
		if randi() % 2 == 1:
			cursor_set_blink_speed(Autoload.get_float())
		if randi() % 2 == 1:
			set_cursor_position(Autoload.get_int())

		if randi() % 2 == 1:
			append_at_cursor(Autoload.get_string())
		if randi() % 2 == 1:
			deselect()
		if randi() % 2 == 1:
			Autoload.qq = str(get_menu())
		if randi() % 2 == 1:
			Autoload.qq = str(menu_option(Autoload.get_int()))#HMMM A LITTLE TOO SLOW
		if randi() % 2 == 1:
			select(Autoload.get_int(),Autoload.get_int())
		if randi() % 2 == 1:
			select_all()

		if randi() % 2 == 1:
			clear()
