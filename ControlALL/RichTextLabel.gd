extends RichTextLabel

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
		
		clear()
		set_use_bbcode(bool(randi()%2))
		set_bbcode(str("\n\n\nafafas") + str(randi()%50))
		set_visible_characters(randi()%50)
		set_percent_visible(randf() * 50)
		set_meta_underline(bool(randi()%2))
		set_tab_size(randi()%50)
		set_text(str("\n\n\nafafas") + str(randi()%50))
		set_scroll_active(bool(randi()%2))
		set_scroll_follow(bool(randi()%2))
		set_selection_enabled(bool(randi()%2))
		set_override_selected_font_color(bool(randi()%2))
		add_image(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		add_text(str("\n\n\nafafas") + str(randi()%50))
		qq += str(append_bbcode(str("\n\n\nafafas") + str(randi()%50)))
		qq += str(get_content_height())
		qq += str(get_line_count())
		qq += str(get_total_character_count())
		qq += str(get_v_scroll())
		qq += str(get_visible_line_count())
		newline()
		qq += str(parse_bbcode("\n\n\nafafas"))
		#pop()
		push_align(randi()%4)
		#push_cell()
		push_color(Color(randf(),randf(),randf(),randf()))
		push_font(load("res://RES/DynamicFont1.tres"))
		push_indent(randi()%6)
		push_list(randi()%3)
		push_meta(get_parent())
		push_strikethrough()
		push_table(randi()%2 + 4)
		#push_underline()
		scroll_to_line(1)
		qq += str(remove_line(0))
		#set_table_column_expand(randi()%2, bool(randi()%2), randi()%4)
		
		if Autoload.WRONG_BUGS:
			clear()
			set_use_bbcode(bool(randi()%2))
			set_bbcode(str("\n\n\nafafas") + str(randi()%50))
			set_visible_characters(randi() % 1000 - 500)
			set_percent_visible(randf() * 1000 - 500)
			set_meta_underline(bool(randi()%2))
			set_tab_size(randi() % 1000 - 500)
			set_text(str("\n\n\nafafas") + str(randi()%50))
			set_scroll_active(bool(randi()%2))
			set_scroll_follow(bool(randi()%2))
			set_selection_enabled(bool(randi()%2))
			set_override_selected_font_color(bool(randi()%2))
			add_image(load("res://RES/Sprite" + str(randi()%10 + 1) + ".png"))
			add_text(str("\n\n\nafafas") + str(randi()%50))
			qq += str(append_bbcode(str("\n\n\nafafas") + str(randi()%50)))
			qq += str(get_content_height())
			qq += str(get_line_count())
			qq += str(get_total_character_count())
			qq += str(get_v_scroll())
			qq += str(get_visible_line_count())
			newline()
			qq += str(parse_bbcode("\n\n\nafafas"))
			pop()
			push_align(randi() % 1000 - 500)
			push_cell()
			push_color(Color(randf(),randf(),randf(),randf()))
			push_font(load("res://RES/DynamicFontasfasfawg.tres"))
			push_indent(randi() % 1000 - 500)
			push_list(randi() % 1000 - 500)
			push_meta(get_parent())
			push_strikethrough()
			push_table(randi() % 1000 - 500)
			push_underline()
			scroll_to_line(randi() % 1000 - 500)
			qq += str(remove_line(randi() % 1000 - 500))
			set_table_column_expand(randi() % 1000 - 500, bool(randi()%2), randi() % 1000 - 500)

	else: #RANDI
		if randi() % 2 == 1:
			clear()
		if randi() % 2 == 1:
			set_use_bbcode(bool(randi()%2))
		if randi() % 2 == 1:
			set_bbcode(str("\n\n\nafafas") + str(randi()%50))
		if randi() % 2 == 1:
			set_visible_characters(randi() % 1000 - 500)
		if randi() % 2 == 1:
			set_percent_visible(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_meta_underline(bool(randi()%2))
		if randi() % 2 == 1:
			set_tab_size(randi() % 1000 - 500)
		if randi() % 2 == 1:
			set_text(str("\n\n\nafafas") + str(randi()%50))
		if randi() % 2 == 1:
			set_scroll_active(bool(randi()%2))
		if randi() % 2 == 1:
			set_scroll_follow(bool(randi()%2))
		if randi() % 2 == 1:
			set_selection_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			set_override_selected_font_color(bool(randi()%2))
		if randi() % 2 == 1:
			add_image(load("res://RES/Sprite" + str(randi()%10 + 1) + ".png"))
		if randi() % 2 == 1:
			add_text(str("\n\n\nafafas") + str(randi()%50))
		if randi() % 2 == 1:
			qq += str(append_bbcode(str("\n\n\nafafas") + str(randi()%50)))
		if randi() % 2 == 1:
			qq += str(get_content_height())
		if randi() % 2 == 1:
			qq += str(get_line_count())
		if randi() % 2 == 1:
			qq += str(get_total_character_count())
		if randi() % 2 == 1:
			qq += str(get_v_scroll())
		if randi() % 2 == 1:
			qq += str(get_visible_line_count())
		if randi() % 2 == 1:
			newline()
		if randi() % 2 == 1:
			qq += str(parse_bbcode("\n\n\nafafas"))
		if randi() % 2 == 1:
			pop()
		if randi() % 2 == 1:
			push_align(randi() % 1000 - 500)
		if randi() % 2 == 1:
			push_cell()
		if randi() % 2 == 1:
			push_color(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			push_font(load("res://RES/DynamicFontasfasfawg.tres"))
		if randi() % 2 == 1:
			push_indent(randi() % 1000 - 500)
		if randi() % 2 == 1:
			push_list(randi() % 1000 - 500)
		if randi() % 2 == 1:
			push_meta(get_parent())
		if randi() % 2 == 1:
			push_strikethrough()
		if randi() % 2 == 1:
			push_table(randi() % 1000 - 500)
		if randi() % 2 == 1:
			push_underline()
		if randi() % 2 == 1:
			scroll_to_line(randi() % 1000 - 500)
		if randi() % 2 == 1:
			qq += str(remove_line(randi() % 1000 - 500))
		if randi() % 2 == 1:
			set_table_column_expand(randi() % 1000 - 500, bool(randi()%2), randi() % 1000 - 500)
