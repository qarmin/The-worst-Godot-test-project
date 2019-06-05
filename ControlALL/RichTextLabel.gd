extends RichTextLabel

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
		var qq : String = ""
		
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
		add_image(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
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
		push_font(load("res://DynamicFont1.tres"))
		push_indent(randi()%6)
		push_list(randi()%3)
		push_meta(get_parent())
		push_strikethrough()
		push_table(randi()%2 + 4)
		#push_underline()
		scroll_to_line(1)
		qq += str(remove_line(0))
		#set_table_column_expand(randi()%2, bool(randi()%2), randi()%4)
		
		qq = qq
		
		
		
		
		
		
		
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x