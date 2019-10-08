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
		
		set_text("asfasf\nafq" + str(randf() * 50) + "sgerafsaqw")
		set_readonly(bool(randi()%2))
		set_highlight_current_line(bool(randi()%2))
		set_syntax_coloring(bool(randi()%2))
		set_show_line_numbers(bool(randi()%2))
		set_draw_tabs(bool(randi()%2))
		set_draw_spaces(bool(randi()%2))
		set_breakpoint_gutter_enabled(bool(randi()%2))
		set_draw_fold_gutter(bool(randi()%2))
		set_highlight_all_occurrences(bool(randi()%2))
		set_override_selected_font_color(bool(randi()%2))
		set_context_menu_enabled(bool(randi()%2))
		set_smooth_scroll_enable(bool(randi()%2))
		set_v_scroll_speed(randf() * 50)
		set_hiding_enabled(bool(randi()%2))
		set_wrap_enabled(bool(randi()%2))
		cursor_set_block_mode(bool(randi()%2))
		cursor_set_blink_enabled(bool(randi()%2))
		cursor_set_blink_speed(randf())
		set_right_click_moves_caret(bool(randi()%2))
		
		add_color_region("a", "qw", Color(randf(),randf(),randf(),randf()),bool(randi()%2))
		add_keyword_color("sfafq", Color(randf(),randf(),randf(),randf()))
		qq += str(can_fold(randi() % get_line_count()))
		clear_colors()
		clear_undo_history()
		copy()
		qq += str(cursor_get_column())
		qq += str(cursor_get_line())
		cursor_set_column(cursor_get_column())
		cursor_set_line(cursor_get_line())
		cut()
		deselect()
		fold_all_lines()
		fold_line(randi() % get_line_count())
		qq += str(get_breakpoints())
		#qq += str(get_keyword_color("sfafq"))
		qq += str(get_line(randi() % get_line_count()))
		qq += str(get_line_count())
		qq += str(get_menu())
		if is_selection_active():
			qq += str(get_selection_from_column())
			qq += str(get_selection_from_line())
			qq += str(get_selection_text())
			qq += str(get_selection_to_column())
			qq += str(get_selection_to_line())
		#qq += str(get_word_under_cursor())
		qq += str(has_keyword_color("sfafq"))
		#insert_text_at_cursor(str(randi()%125 +125))
		qq += str(is_folded(randi() % get_line_count()))
		qq += str(is_line_hidden(randi() % get_line_count()))
		qq += str(is_selection_active())
		#menu_option(randi() % MENU_MAX)
		paste()
		redo()
		remove_breakpoints()
		#qq += str(search("asf", randi() % 8,0,0)) # Strange but corrent, Match case, whole words and backwards can be added to itself
		select(0,0,get_line_count(),1)
		select_all()
		#set_line_as_hidden(get_line_count(),bool(randi()%2))
		#toggle_fold_line(get_line_count())
		undo()
		#unfold_line(get_line_count())
		unhide_all_lines()
		
		
		if Autoload.WRONG_BUGS:
			set_text("asfasf\nafq" + str(randf() * 50) + "sgerasfawfqaw\r\t\nafsaqw")
			set_readonly(bool(randi()%2))
			set_highlight_current_line(bool(randi()%2))
			set_syntax_coloring(bool(randi()%2))
			set_show_line_numbers(bool(randi()%2))
			set_draw_tabs(bool(randi()%2))
			set_draw_spaces(bool(randi()%2))
			set_breakpoint_gutter_enabled(bool(randi()%2))
			set_draw_fold_gutter(bool(randi()%2))
			set_highlight_all_occurrences(bool(randi()%2))
			set_override_selected_font_color(bool(randi()%2))
			set_context_menu_enabled(bool(randi()%2))
			set_smooth_scroll_enable(bool(randi()%2))
			set_v_scroll_speed(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			set_hiding_enabled(bool(randi()%2))
			set_wrap_enabled(bool(randi()%2))
			cursor_set_block_mode(bool(randi()%2))
			cursor_set_blink_enabled(bool(randi()%2))
			cursor_set_blink_speed(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			set_right_click_moves_caret(bool(randi()%2))
			
			add_color_region("aqwfqwfqw", "qascqw", Color(randf(),randf(),randf(),randf()),bool(randi()%2))
			add_keyword_color("sffqwfasfasfqw", Color(randf(),randf(),randf(),randf()))
			qq += str(can_fold(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			clear_colors()
			clear_undo_history()
			copy()
			qq += str(cursor_get_column())
			qq += str(cursor_get_line())
			cursor_set_column(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			cursor_set_line(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			cut()
			deselect()
			fold_all_lines()
			fold_line(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			qq += str(get_breakpoints())
			#qq += str(get_keyword_color("sfafq"))
			qq += str(get_line(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(get_line_count())
			qq += str(get_menu())
			if is_selection_active():
				qq += str(get_selection_from_column())
				qq += str(get_selection_from_line())
				qq += str(get_selection_text())
				qq += str(get_selection_to_column())
				qq += str(get_selection_to_line())
			#qq += str(get_word_under_cursor())
			qq += str(has_keyword_color("sfaqwffq"))
			insert_text_at_cursor(str(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(is_folded(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(is_line_hidden(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(is_selection_active())
			#menu_option(randi() % MENU_MAX)
			paste()
			redo()
			remove_breakpoints()
			#qq += str(search("asf", randi() % 8,0,0)) # Strange but corrent, Match case, whole words and backwards can be added to itself
			#select(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
			select_all()
			set_line_as_hidden(get_line_count(),bool(randi()%2))
			toggle_fold_line(get_line_count())
			undo()
			unfold_line(get_line_count())
			unhide_all_lines()

	else: #RANDI
		if randi() % 2 == 1:
			set_text("asfasf\nafq" + str(randf() * 50) + "sgerasfawfqaw\r\t\nafsaqw")
		if randi() % 2 == 1:
			set_readonly(bool(randi()%2))
		if randi() % 2 == 1:
			set_highlight_current_line(bool(randi()%2))
		if randi() % 2 == 1:
			set_syntax_coloring(bool(randi()%2))
		if randi() % 2 == 1:
			set_show_line_numbers(bool(randi()%2))
		if randi() % 2 == 1:
			set_draw_tabs(bool(randi()%2))
		if randi() % 2 == 1:
			set_draw_spaces(bool(randi()%2))
		if randi() % 2 == 1:
			set_breakpoint_gutter_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			set_draw_fold_gutter(bool(randi()%2))
		if randi() % 2 == 1:
			set_highlight_all_occurrences(bool(randi()%2))
		if randi() % 2 == 1:
			set_override_selected_font_color(bool(randi()%2))
		if randi() % 2 == 1:
			set_context_menu_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			set_smooth_scroll_enable(bool(randi()%2))
		if randi() % 2 == 1:
			set_v_scroll_speed(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_hiding_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			set_wrap_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			cursor_set_block_mode(bool(randi()%2))
		if randi() % 2 == 1:
			cursor_set_blink_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			cursor_set_blink_speed(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_right_click_moves_caret(bool(randi()%2))
			
		if randi() % 2 == 1:
			add_color_region("aqwfqwfqw", "qascqw", Color(randf(),randf(),randf(),randf()),bool(randi()%2))
		if randi() % 2 == 1:
			add_keyword_color("sffqwfasfasfqw", Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			qq += str(can_fold(randi() % Autoload.RANGE - Autoload.RANGE / 2))
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
			cursor_set_column(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			cursor_set_line(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			cut()
		if randi() % 2 == 1:
			deselect()
		if randi() % 2 == 1:
			fold_all_lines()
		if randi() % 2 == 1:
			fold_line(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			qq += str(get_breakpoints())
		if randi() % 2 == 1:
			qq += str(get_keyword_color("sfafq"))
		if randi() % 2 == 1:
			qq += str(get_line(randi() % Autoload.RANGE - Autoload.RANGE / 2))
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
			qq += str(has_keyword_color("sfaqwffq"))
		if randi() % 2 == 1:
			insert_text_at_cursor(str(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(is_folded(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(is_line_hidden(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(is_selection_active())
			#menu_option(randi() % MENU_MAX)
		if randi() % 2 == 1:
			paste()
		if randi() % 2 == 1:
			redo()
		if randi() % 2 == 1:
			remove_breakpoints()
			#qq += str(search("asf", randi() % 8,0,0)) # Strange but corrent, Match case, whole words and backwards can be added to itself
			#select(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			select_all()
		if randi() % 2 == 1:
			set_line_as_hidden(get_line_count(),bool(randi()%2))
		if randi() % 2 == 1:
			toggle_fold_line(get_line_count())
		if randi() % 2 == 1:
			undo()
		if randi() % 2 == 1:
			unfold_line(get_line_count())
		if randi() % 2 == 1:
			unhide_all_lines()
