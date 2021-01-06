extends RichTextLabel

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_RichTextLabel: RichTextLabel, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_RichTextLabel)
		AutoObjects.A_Node(q_RichTextLabel)
		AutoObjects.A_CanvasItem(q_RichTextLabel)
		AutoObjects.A_Control(q_RichTextLabel)

	### START TEMP
	var temp_ImageTexture: ImageTexture = ImageTexture.new()
#?#	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)

	var temp_Font: Font = Font.new()
#?#	AutoResourcesFont.nodeFunction(temp_Font)

	### END TEMP

	if randi() % 2 == 1:
		q_RichTextLabel.clear()
	if randi() % 2 == 1:
		q_RichTextLabel.set_use_bbcode(Autoload.get_bool())
#	LEAK	if randi() % 2 == 1:
#			q_RichTextLabel.set_bbcode(Autoload.get_string())
	if randi() % 2 == 1:
		q_RichTextLabel.set_visible_characters(Autoload.get_int())
	if randi() % 2 == 1:
		q_RichTextLabel.set_percent_visible(Autoload.get_float())
	if randi() % 2 == 1:
		q_RichTextLabel.set_meta_underline(Autoload.get_bool())
	if randi() % 2 == 1:
		q_RichTextLabel.set_tab_size(Autoload.get_int())
	if randi() % 2 == 1:
		q_RichTextLabel.set_text(Autoload.get_string())
	if randi() % 2 == 1:
		q_RichTextLabel.set_scroll_active(Autoload.get_bool())
	if randi() % 2 == 1:
		q_RichTextLabel.set_scroll_follow(Autoload.get_bool())
	if randi() % 2 == 1:
		q_RichTextLabel.set_selection_enabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_RichTextLabel.set_override_selected_font_color(Autoload.get_bool())
	if randi() % 2 == 1:
		q_RichTextLabel.add_image(temp_ImageTexture)
	if randi() % 2 == 1:
		q_RichTextLabel.add_text(Autoload.get_string())
	if randi() % 2 == 1:
		q_RichTextLabel.append_bbcode(Autoload.get_string())
	if randi() % 2 == 1:
		q_RichTextLabel.get_content_height()
	if randi() % 2 == 1:
		q_RichTextLabel.get_line_count()
	if randi() % 2 == 1:
		q_RichTextLabel.get_total_character_count()
	if randi() % 2 == 1:
		q_RichTextLabel.get_v_scroll()
	if randi() % 2 == 1:
		q_RichTextLabel.get_visible_line_count()
	if randi() % 2 == 1:
		q_RichTextLabel.newline()
	if randi() % 2 == 1:
		q_RichTextLabel.parse_bbcode(Autoload.get_string())
	if randi() % 2 == 1:
		q_RichTextLabel.pop()
	if randi() % 2 == 1:
		q_RichTextLabel.push_align(Autoload.get_int())
	if randi() % 2 == 1:
		q_RichTextLabel.push_cell()
	if randi() % 2 == 1:
		q_RichTextLabel.push_color(Autoload.get_color())
	if randi() % 2 == 1:
		q_RichTextLabel.push_font(temp_Font)
	if randi() % 2 == 1:
		q_RichTextLabel.push_indent(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_RichTextLabel.push_list(Autoload.get_int())
	if randi() % 2 == 1:
		q_RichTextLabel.push_meta(get_parent())
	if randi() % 2 == 1:
		q_RichTextLabel.push_strikethrough()
	if randi() % 2 == 1:
		q_RichTextLabel.push_table(Autoload.get_int())
	if randi() % 2 == 1:
		q_RichTextLabel.push_underline()
	if randi() % 2 == 1:
		q_RichTextLabel.scroll_to_line(Autoload.get_int())
	if randi() % 2 == 1:
		q_RichTextLabel.remove_line(Autoload.get_int())
	if randi() % 2 == 1:
		q_RichTextLabel.set_table_column_expand(Autoload.get_int(), Autoload.get_bool(), Autoload.get_int())
