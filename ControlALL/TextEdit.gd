extends TextEdit

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x


func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

		if randi() % 2 == 1:
			set_text(Autoload.get_string())
		if randi() % 2 == 1:
			set_readonly(Autoload.get_bool())
		if randi() % 2 == 1:
			set_highlight_current_line(Autoload.get_bool())
		if randi() % 2 == 1:
			set_syntax_coloring(Autoload.get_bool())
		if randi() % 2 == 1:
			set_show_line_numbers(Autoload.get_bool())
		if randi() % 2 == 1:
			set_draw_tabs(Autoload.get_bool())
		if randi() % 2 == 1:
			set_draw_spaces(Autoload.get_bool())
		if randi() % 2 == 1:
			set_breakpoint_gutter_enabled(Autoload.get_bool())
		if randi() % 2 == 1:
			set_draw_fold_gutter(Autoload.get_bool())
		if randi() % 2 == 1:
			set_highlight_all_occurrences(Autoload.get_bool())
		if randi() % 2 == 1:
			set_override_selected_font_color(Autoload.get_bool())
		if randi() % 2 == 1:
			set_context_menu_enabled(Autoload.get_bool())
		if randi() % 2 == 1:
			set_smooth_scroll_enable(Autoload.get_bool())
		if randi() % 2 == 1:
			set_v_scroll_speed(Autoload.get_float())
		if randi() % 2 == 1:
			set_hiding_enabled(Autoload.get_bool())
		if randi() % 2 == 1:
			set_wrap_enabled(Autoload.get_bool())
		if randi() % 2 == 1:
			cursor_set_block_mode(Autoload.get_bool())
		if randi() % 2 == 1:
			cursor_set_blink_enabled(Autoload.get_bool())
		if randi() % 2 == 1:
			cursor_set_blink_speed(Autoload.get_float())
		if randi() % 2 == 1:
			set_right_click_moves_caret(Autoload.get_bool())
			
		if randi() % 2 == 1:
			add_color_region(Autoload.get_string(), Autoload.get_string(), Autoload.get_color(),Autoload.get_bool())
		if randi() % 2 == 1:
			add_keyword_color(Autoload.get_string(), Autoload.get_color())
		if randi() % 2 == 1:
			qq += str(can_fold(Autoload.get_int()))
		if randi() % 2 == 1:
			clear_colors()
		if randi() % 2 == 1:
			clear_undo_history()
		if randi() % 2 == 1:
			copy()
		if randi() % 2 == 1:
			qq += str(cursor_get_column())
		if randi() % 2 == 1:
			qq += str(cursor_get_line())
		if randi() % 2 == 1:
			cursor_set_column(Autoload.get_int())
		if randi() % 2 == 1:
			cursor_set_line(Autoload.get_int())
		if randi() % 2 == 1:
			cut()
		if randi() % 2 == 1:
			deselect()
		if randi() % 2 == 1:
			fold_all_lines()
		if randi() % 2 == 1:
			fold_line(Autoload.get_int())
		if randi() % 2 == 1:
			qq += str(get_breakpoints())
		if randi() % 2 == 1:
			qq += str(get_keyword_color(Autoload.get_string()))
		if randi() % 2 == 1:
			qq += str(get_line(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(get_line_count())
		if randi() % 2 == 1:
			qq += str(get_menu())
		if randi() % 2 == 1:
			qq += str(get_selection_from_column())
		if randi() % 2 == 1:
			qq += str(get_selection_from_line())
		if randi() % 2 == 1:
			qq += str(get_selection_text())
		if randi() % 2 == 1:
			qq += str(get_selection_to_column())
		if randi() % 2 == 1:
			qq += str(get_selection_to_line())
			#qq += str(get_word_under_cursor())
		if randi() % 2 == 1:
			qq += str(has_keyword_color(Autoload.get_string()))
		if randi() % 2 == 1:
			insert_text_at_cursor(str(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(is_folded(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(is_line_hidden(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(is_selection_active())
			#menu_option(randi() % MENU_MAX)
		if randi() % 2 == 1:
			paste()
		if randi() % 2 == 1:
			redo()
		if randi() % 2 == 1:
			remove_breakpoints()
			#qq += str(search(Autoload.get_string(), randi() % 8,0,0)) # Strange but corrent, Match case, whole words and backwards can be added to itself
			#select(Autoload.get_int(),Autoload.get_int(),Autoload.get_int(),Autoload.get_int())
		if randi() % 2 == 1:
			select_all()
		if randi() % 2 == 1:
			set_line_as_hidden(get_line_count(),Autoload.get_bool())
		if randi() % 2 == 1:
			toggle_fold_line(get_line_count())
		if randi() % 2 == 1:
			undo()
		if randi() % 2 == 1:
			unfold_line(get_line_count())
		if randi() % 2 == 1:
			unhide_all_lines()
