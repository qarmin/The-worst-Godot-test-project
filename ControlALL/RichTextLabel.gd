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
		
		if randi() % 2 == 1:
			clear()
		if randi() % 2 == 1:
			set_use_bbcode(bool(randi()%2))
#	LEAK	if randi() % 2 == 1:
#			set_bbcode(str(Autoload.get_string()) + str(randi()%50))
		if randi() % 2 == 1:
			set_visible_characters(Autoload.get_randi())
		if randi() % 2 == 1:
			set_percent_visible(Autoload.get_randf())
		if randi() % 2 == 1:
			set_meta_underline(bool(randi()%2))
		if randi() % 2 == 1:
			set_tab_size(Autoload.get_randi())
		if randi() % 2 == 1:
			set_text(str(Autoload.get_string()) + str(randi()%50))
		if randi() % 2 == 1:
			set_scroll_active(bool(randi()%2))
		if randi() % 2 == 1:
			set_scroll_follow(bool(randi()%2))
		if randi() % 2 == 1:
			set_selection_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			set_override_selected_font_color(bool(randi()%2))
		if randi() % 2 == 1:
			add_image(Autoload.loadA("res://RES/Sprite.png"))
#	BUG	if randi() % 2 == 1:
#			add_text(str(Autoload.get_string()) + str(randi()%50))
		if randi() % 2 == 1:
			qq += str(append_bbcode(str(Autoload.get_string()) + str(randi()%50)))
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
			qq += str(parse_bbcode(Autoload.get_string()))
		if randi() % 2 == 1:
			pop()
		if randi() % 2 == 1:
			push_align(Autoload.get_randi())
		if randi() % 2 == 1:
			push_cell()
		if randi() % 2 == 1:
			push_color(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			push_font(Autoload.loadA("res://RES/DynamicFont.tres"))
		if randi() % 2 == 1:
			push_indent(Autoload.get_randi())
		if randi() % 2 == 1:
			push_list(Autoload.get_randi())
		if randi() % 2 == 1:
			push_meta(get_parent())
		if randi() % 2 == 1:
			push_strikethrough()
		if randi() % 2 == 1:
			push_table(Autoload.get_randi())
		if randi() % 2 == 1:
			push_underline()
		if randi() % 2 == 1:
			scroll_to_line(Autoload.get_randi())
		if randi() % 2 == 1:
			qq += str(remove_line(Autoload.get_randi()))
		if randi() % 2 == 1:
			set_table_column_expand(Autoload.get_randi(), bool(randi()%2), Autoload.get_randi())
