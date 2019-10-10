extends Tree

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
			set_columns(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_allow_reselect(bool(randi()%2))
		if randi() % 2 == 1:
			set_allow_rmb_select(bool(randi()%2))
		if randi() % 2 == 1:
			set_hide_folding(bool(randi()%2))
		if randi() % 2 == 1:
			set_hide_root(bool(randi()%2))
		if randi() % 2 == 1:
			set_drop_mode_flags(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_select_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			
		if randi() % 2 == 1:
			qq += str(are_column_titles_visible())
		if randi() % 2 == 1:
			clear()
		if randi() % 2 == 1:
			qq += str(create_item())
		if randi() % 2 == 1:
			ensure_cursor_is_visible()
		if randi() % 2 == 1:
			qq += str(get_column_at_position(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)))
		if randi() % 2 == 1:
			qq += str(get_column_title(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_column_width(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_custom_popup_rect())
		if randi() % 2 == 1:
			qq += str(get_drop_section_at_position(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)))
		if randi() % 2 == 1:
			qq += str(get_edited())
		if randi() % 2 == 1:
			qq += str(get_edited_column())
		if randi() % 2 == 1:
			qq += str(get_item_area_rect(self))
		if randi() % 2 == 1:
			qq += str(get_item_at_position(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)))
		if randi() % 2 == 1:
			qq += str(get_next_selected(self))
		if randi() % 2 == 1:
			qq += str(get_pressed_button())
		if randi() % 2 == 1:
			qq += str(get_root())
		if randi() % 2 == 1:
			qq += str(get_scroll())
		if randi() % 2 == 1:
			qq += str(get_selected())
		if randi() % 2 == 1:
			qq += str(get_selected_column())
		if randi() % 2 == 1:
			set_column_expand(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
		if randi() % 2 == 1:
			set_column_min_width(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_column_title(randi() % Autoload.RANGE - Autoload.RANGE / 2,str(randi()%50))
		if randi() % 2 == 1:
			set_column_titles_visible(bool(randi()%2))
