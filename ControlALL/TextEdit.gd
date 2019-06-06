extends TextEdit

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x


func _process(delta) -> void:
	counter -= delta
	
#		Vector2(randf() * 50,randf() * 50))
#		randf() * 50)
#		bool(randi()%2))
#		randi()%50)
#		Color(randf(),randf(),randf(),randf()))
#		load("res://Sprite" + str(randi()%4 + 1) + ".png"))
#		var qq : String = ""
#		qq += str(
#		qq = qq
	
	if counter <= 0:
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
		can_fold(randi() % get_line_count())
		clear_colors()
		clear_undo_history()
		copy()
		cursor_get_column()
		cursor_get_line()
		cursor_set_column(cursor_get_column())
		cursor_set_line(cursor_get_line())
		cut()
		deselect()
		fold_all_lines()
		fold_line(randi() % get_line_count())
		get_breakpoints()
		get_keyword_color("sfafq")
		get_line(randi() % get_line_count())
		get_line_count()
		get_menu()
		get_selection_from_column()
		get_selection_from_line()
		get_selection_text()
		get_selection_to_column()
		get_selection_to_line()
		get_word_under_cursor()
		has_keyword_color("sfafq")
		insert_text_at_cursor(str(randf()))
		is_folded(randi() % get_line_count())
		is_line_hidden(randi() % get_line_count())
		is_selection_active()
		menu_option(randi() % MENU_MAX)
		paste()
		redo()
		remove_breakpoints()
		search("asf", randi() % 8,0,0) # Strange but corrent, Match case, whole words and backwards can be added to itself
		select(0,0,get_line_count(),1)
		select_all()
		set_line_as_hidden(get_line_count(),bool(randi()%2))
		toggle_fold_line(get_line_count())
		undo()
		unfold_line(get_line_count())
		unhide_all_lines()
		
		
		
		
		
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x