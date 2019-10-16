extends Tree

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_columns(Autoload.get_inti(100))
		if randi() % 2 == 1:
			set_allow_reselect(Autoload.get_bool())
		if randi() % 2 == 1:
			set_allow_rmb_select(Autoload.get_bool())
		if randi() % 2 == 1:
			set_hide_folding(Autoload.get_bool())
		if randi() % 2 == 1:
			set_hide_root(Autoload.get_bool())
		if randi() % 2 == 1:
			set_drop_mode_flags(Autoload.get_int())
		if randi() % 2 == 1:
			set_select_mode(Autoload.get_int())

		if randi() % 2 == 1:
			Autoload.qq = str(are_column_titles_visible())
		if randi() % 2 == 1:
			clear()
		if randi() % 2 == 1:
			Autoload.qq = str(create_item())
		if randi() % 2 == 1:
			ensure_cursor_is_visible()
		if randi() % 2 == 1:
			Autoload.qq = str(get_column_at_position(Autoload.get_vector2()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_column_title(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_column_width(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_custom_popup_rect())
		if randi() % 2 == 1:
			Autoload.qq = str(get_drop_section_at_position(Autoload.get_vector2()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_edited())
		if randi() % 2 == 1:
			Autoload.qq = str(get_edited_column())
		if randi() % 2 == 1:
			Autoload.qq = str(get_item_area_rect(self))
		if randi() % 2 == 1:
			Autoload.qq = str(get_item_at_position(Autoload.get_vector2()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_next_selected(self))
		if randi() % 2 == 1:
			Autoload.qq = str(get_pressed_button())
		if randi() % 2 == 1:
			Autoload.qq = str(get_root())
		if randi() % 2 == 1:
			Autoload.qq = str(get_scroll())
		if randi() % 2 == 1:
			Autoload.qq = str(get_selected())
		if randi() % 2 == 1:
			Autoload.qq = str(get_selected_column())
		if randi() % 2 == 1:
			set_column_expand(Autoload.get_int(),Autoload.get_bool())
		if randi() % 2 == 1:
			set_column_min_width(Autoload.get_int(),Autoload.get_int())
		if randi() % 2 == 1:
			set_column_title(Autoload.get_int(),Autoload.get_string())
		if randi() % 2 == 1:
			set_column_titles_visible(Autoload.get_bool())
