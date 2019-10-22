extends TextEdit

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_TextEdit : TextEdit, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_TextEdit)
		AutoObjects.A_Node(q_TextEdit)
		AutoObjects.A_CanvasItem(q_TextEdit)
		AutoObjects.A_Control(q_TextEdit)
		
	if randi() % 2 == 1:
		q_TextEdit.set_text(Autoload.get_string())
	if randi() % 2 == 1:
		q_TextEdit.set_readonly(Autoload.get_bool())
	if randi() % 2 == 1:
		q_TextEdit.set_highlight_current_line(Autoload.get_bool())
	if randi() % 2 == 1:
		q_TextEdit.set_syntax_coloring(Autoload.get_bool())
	if randi() % 2 == 1:
		q_TextEdit.set_show_line_numbers(Autoload.get_bool())
	if randi() % 2 == 1:
		q_TextEdit.set_draw_tabs(Autoload.get_bool())
	if randi() % 2 == 1:
		q_TextEdit.set_draw_spaces(Autoload.get_bool())
	if randi() % 2 == 1:
		q_TextEdit.set_breakpoint_gutter_enabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_TextEdit.set_draw_fold_gutter(Autoload.get_bool())
	if randi() % 2 == 1:
		q_TextEdit.set_highlight_all_occurrences(Autoload.get_bool())
	if randi() % 2 == 1:
		q_TextEdit.set_override_selected_font_color(Autoload.get_bool())
	if randi() % 2 == 1:
		q_TextEdit.set_context_menu_enabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_TextEdit.set_smooth_scroll_enable(Autoload.get_bool())
	if randi() % 2 == 1:
		q_TextEdit.set_v_scroll_speed(Autoload.get_float())
	if randi() % 2 == 1:
		q_TextEdit.set_hiding_enabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_TextEdit.set_wrap_enabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_TextEdit.cursor_set_block_mode(Autoload.get_bool())
	if randi() % 2 == 1:
		q_TextEdit.cursor_set_blink_enabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_TextEdit.cursor_set_blink_speed(Autoload.get_float())
	if randi() % 2 == 1:
		q_TextEdit.set_right_click_moves_caret(Autoload.get_bool())

	if randi() % 2 == 1:
		q_TextEdit.add_color_region(Autoload.get_string(), Autoload.get_string(), Autoload.get_color(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_TextEdit.add_keyword_color(Autoload.get_string(), Autoload.get_color())
	if randi() % 2 == 1:
		q_TextEdit.can_fold(Autoload.get_int())
	if randi() % 2 == 1:
		q_TextEdit.clear_colors()
	if randi() % 2 == 1:
		q_TextEdit.clear_undo_history()
	if randi() % 2 == 1:
		q_TextEdit.copy()
	if randi() % 2 == 1:
		q_TextEdit.cursor_get_column()
	if randi() % 2 == 1:
		q_TextEdit.cursor_get_line()
	if randi() % 2 == 1:
		q_TextEdit.cursor_set_column(Autoload.get_int())
	if randi() % 2 == 1:
		q_TextEdit.cursor_set_line(Autoload.get_int())
	if randi() % 2 == 1:
		q_TextEdit.cut()
	if randi() % 2 == 1:
		q_TextEdit.deselect()
	if randi() % 2 == 1:
		q_TextEdit.fold_all_lines()
	if randi() % 2 == 1:
		q_TextEdit.fold_line(Autoload.get_int())
	if randi() % 2 == 1:
		q_TextEdit.get_breakpoints()
	if randi() % 2 == 1:
		q_TextEdit.get_keyword_color(Autoload.get_string())
	if randi() % 2 == 1:
		q_TextEdit.get_line(Autoload.get_int())
	if randi() % 2 == 1:
		q_TextEdit.get_line_count()
	if randi() % 2 == 1:
		q_TextEdit.get_menu()
	if randi() % 2 == 1:
		q_TextEdit.get_selection_from_column()
	if randi() % 2 == 1:
		q_TextEdit.get_selection_from_line()
	if randi() % 2 == 1:
		q_TextEdit.get_selection_text()
	if randi() % 2 == 1:
		q_TextEdit.get_selection_to_column()
	if randi() % 2 == 1:
		q_TextEdit.get_selection_to_line()
	if randi() % 2 == 1:
		q_TextEdit.get_word_under_cursor()
	if randi() % 2 == 1:
		q_TextEdit.has_keyword_color(Autoload.get_string())
	if randi() % 2 == 1:
		q_TextEdit.insert_text_at_cursor(Autoload.get_string())
	if randi() % 2 == 1:
		q_TextEdit.is_folded(Autoload.get_int())
	if randi() % 2 == 1:
		q_TextEdit.is_line_hidden(Autoload.get_int())
	if randi() % 2 == 1:
		q_TextEdit.is_selection_active()
	if randi() % 2 == 1:
		q_TextEdit.menu_option(Autoload.get_int())
	if randi() % 2 == 1:
		q_TextEdit.paste()
	if randi() % 2 == 1:
		q_TextEdit.redo()
	if randi() % 2 == 1:
		q_TextEdit.remove_breakpoints()
	if randi() % 2 == 1:
		q_TextEdit.search(Autoload.get_string(), Autoload.get_int(),Autoload.get_int(),Autoload.get_int())
	if randi() % 2 == 1:
		q_TextEdit.select(Autoload.get_int(),Autoload.get_int(),Autoload.get_int(),Autoload.get_int())
	if randi() % 2 == 1:
		q_TextEdit.select_all()
	if randi() % 2 == 1:
		q_TextEdit.set_line_as_hidden(get_line_count(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_TextEdit.toggle_fold_line(get_line_count())
	if randi() % 2 == 1:
		q_TextEdit.undo()
	if randi() % 2 == 1:
		q_TextEdit.unfold_line(get_line_count())
	if randi() % 2 == 1:
		q_TextEdit.unhide_all_lines()
