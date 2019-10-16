extends RichTextLabel

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			clear()
		if randi() % 2 == 1:
			set_use_bbcode(Autoload.get_bool())
#	LEAK	if randi() % 2 == 1:
#			set_bbcode(Autoload.get_string())
		if randi() % 2 == 1:
			set_visible_characters(Autoload.get_int())
		if randi() % 2 == 1:
			set_percent_visible(Autoload.get_float())
		if randi() % 2 == 1:
			set_meta_underline(Autoload.get_bool())
		if randi() % 2 == 1:
			set_tab_size(Autoload.get_int())
		if randi() % 2 == 1:
			set_text(Autoload.get_string())
		if randi() % 2 == 1:
			set_scroll_active(Autoload.get_bool())
		if randi() % 2 == 1:
			set_scroll_follow(Autoload.get_bool())
		if randi() % 2 == 1:
			set_selection_enabled(Autoload.get_bool())
		if randi() % 2 == 1:
			set_override_selected_font_color(Autoload.get_bool())
		if randi() % 2 == 1:
			add_image(Autoload.loadA("Sprite.png"))
#	BUG	if randi() % 2 == 1:
#			add_text(Autoload.get_string())
		if randi() % 2 == 1:
			Autoload.qq = str(append_bbcode(Autoload.get_string()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_content_height())
		if randi() % 2 == 1:
			Autoload.qq = str(get_line_count())
		if randi() % 2 == 1:
			Autoload.qq = str(get_total_character_count())
		if randi() % 2 == 1:
			Autoload.qq = str(get_v_scroll())
		if randi() % 2 == 1:
			Autoload.qq = str(get_visible_line_count())
		if randi() % 2 == 1:
			newline()
		if randi() % 2 == 1:
			Autoload.qq = str(parse_bbcode(Autoload.get_string()))
		if randi() % 2 == 1:
			pop()
		if randi() % 2 == 1:
			push_align(Autoload.get_int())
		if randi() % 2 == 1:
			push_cell()
		if randi() % 2 == 1:
			push_color(Autoload.get_color())
		if randi() % 2 == 1:
			push_font(Autoload.loadA("DynamicFont.tres"))
		if randi() % 2 == 1:
			push_indent(Autoload.get_int())
		if randi() % 2 == 1:
			push_list(Autoload.get_int())
		if randi() % 2 == 1:
			push_meta(get_parent())
		if randi() % 2 == 1:
			push_strikethrough()
		if randi() % 2 == 1:
			push_table(Autoload.get_int())
		if randi() % 2 == 1:
			push_underline()
		if randi() % 2 == 1:
			scroll_to_line(Autoload.get_int())
#	BUG	if randi() % 2 == 1:
#			Autoload.qq = str(remove_line(Autoload.get_int()))
		if randi() % 2 == 1:
			set_table_column_expand(Autoload.get_int(), Autoload.get_bool(), Autoload.get_int())
