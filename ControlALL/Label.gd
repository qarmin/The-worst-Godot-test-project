extends Label

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
			set_valign(Autoload.get_int())
		if randi() % 2 == 1:
			set_autowrap(Autoload.get_bool())
		if randi() % 2 == 1:
			set_clip_text(Autoload.get_bool())
		if randi() % 2 == 1:
			set_uppercase(Autoload.get_bool())
		if randi() % 2 == 1:
			set_visible_characters(Autoload.get_int())
		if randi() % 2 == 1:
			set_percent_visible(Autoload.get_int())
		if randi() % 2 == 1:
			set_lines_skipped(Autoload.get_int())
		if randi() % 2 == 1:
			set_max_lines_visible(Autoload.get_int())

		if randi() % 2 == 1:
			Autoload.qq = str(get_line_count())
		if randi() % 2 == 1:
			Autoload.qq = str(get_line_height())
		if randi() % 2 == 1:
			Autoload.qq = str(get_total_character_count())
		if randi() % 2 == 1:
			Autoload.qq = str(get_visible_line_count())
