extends ItemList

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x


func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
# BUG
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#		var popup_temp : Popup = Popup.new()
#
#		if randi() % 2 == 1:
#			set_select_mode(Autoload.get_int())
#		if randi() % 2 == 1:
#			set_allow_reselect(Autoload.get_bool())
#		if randi() % 2 == 1:
#			set_allow_rmb_select(Autoload.get_bool())
#		if randi() % 2 == 1:
#			set_max_text_lines(Autoload.get_int())
#		if randi() % 2 == 1:
#			set_auto_height(Autoload.get_bool())
#		if randi() % 2 == 1:
#			set_max_columns(Autoload.get_int())
#		if randi() % 2 == 1:
#			set_same_column_width(Autoload.get_bool())
#		if randi() % 2 == 1:
#			set_fixed_column_width(Autoload.get_int())
#		if randi() % 2 == 1:
#			set_icon_mode(Autoload.get_int())
#		if randi() % 2 == 1:
#			set_icon_scale(Autoload.get_float())
#		if randi() % 2 == 1:
#			set_fixed_icon_size(Vector2(Autoload.get_float(), Autoload.get_float()))
#		if randi() % 2 == 1:
#			add_icon_item(Autoload.loadA("Sprite.png"),Autoload.get_bool())
#		if randi() % 2 == 1:
#			add_item(str(Autoload.get_int()),Autoload.loadA("Sprite.png"),Autoload.get_bool())
#		if randi() % 2 == 1:
#			ensure_current_is_visible()
#		if randi() % 2 == 1:
#			qq += str(get_item_at_position(Vector2(Autoload.get_float(), Autoload.get_float()),Autoload.get_bool()))
#		if randi() % 2 == 1:
#			qq += str(get_item_count())
#		if randi() % 2 == 1:
#			qq += str(get_item_custom_bg_color(Autoload.get_int()))
#		if randi() % 2 == 1:
#			qq += str(get_item_custom_fg_color(Autoload.get_int()))
#		if randi() % 2 == 1:
#			qq += str(get_item_icon(Autoload.get_int()))
#		if randi() % 2 == 1:
#			qq += str(get_item_icon_modulate(Autoload.get_int()))
#		if randi() % 2 == 1:
#			qq += str(get_item_icon_region(Autoload.get_int()))
#		if randi() % 2 == 1:
#			qq += str(get_item_metadata(Autoload.get_int()))
#		if randi() % 2 == 1:
#			qq += str(get_item_text(Autoload.get_int()))
#		if randi() % 2 == 1:
#			qq += str(get_item_tooltip(Autoload.get_int()))
#		if randi() % 2 == 1:
#			qq += str(get_selected_items())
#		if randi() % 2 == 1:
#			qq += str(get_v_scroll())
#		if randi() % 2 == 1:
#			qq += str(is_anything_selected())
#		if randi() % 2 == 1:
#			qq += str(is_item_disabled(Autoload.get_int()))
#		if randi() % 2 == 1:
#			qq += str(is_item_icon_transposed(Autoload.get_int()))
#		if randi() % 2 == 1:
#			qq += str(is_item_selectable(Autoload.get_int()))
#		if randi() % 2 == 1:
#			qq += str(is_item_tooltip_enabled(Autoload.get_int()))
#		if randi() % 2 == 1:
#			qq += str(is_selected(Autoload.get_int()))
#		if randi() % 2 == 1:
#			move_item(Autoload.get_int(),Autoload.get_int())
#		if randi() % 2 == 1:
#			remove_item(Autoload.get_int())
#		if randi() % 2 == 1:
#			select(Autoload.get_int(),Autoload.get_bool())
#		if randi() % 2 == 1:
#			set_item_custom_bg_color(Autoload.get_int(),Autoload.get_color())
#		if randi() % 2 == 1:
#			set_item_custom_fg_color(Autoload.get_int(),Autoload.get_color())
#		if randi() % 2 == 1:
#			set_item_disabled(Autoload.get_int(),Autoload.get_bool())
#		if randi() % 2 == 1:
#			set_item_icon(Autoload.get_int(),Autoload.loadA("Sprite.png"))
#		if randi() % 2 == 1:
#			set_item_icon_modulate(Autoload.get_int(),Autoload.get_color())
#		if randi() % 2 == 1:
#			set_item_icon_region(Autoload.get_int(),Rect2(Vector2(Autoload.get_float(), Autoload.get_float()),Vector2(Autoload.get_float(), Autoload.get_float())))
#		if randi() % 2 == 1:
#			set_item_icon_transposed(Autoload.get_int(),Autoload.get_bool())
#		if randi() % 2 == 1:
#			set_item_metadata(Autoload.get_int(),popup_temp)
#		if randi() % 2 == 1:
#			set_item_selectable(Autoload.get_int(),Autoload.get_bool())
#		if randi() % 2 == 1:
#			set_item_text(Autoload.get_int(),str(Autoload.get_bool()))
#		if randi() % 2 == 1:
#			set_item_tooltip(Autoload.get_int(),str(Autoload.get_bool()))
#		if randi() % 2 == 1:
#			set_item_tooltip_enabled(Autoload.get_int(),Autoload.get_bool())
#		if randi() % 2 == 1:
#			sort_items_by_text()
#		if randi() % 2 == 1:
#			unselect(Autoload.get_int())
#		if randi() % 2 == 1:
#			unselect_all()
#		if randi() % 2 == 1:
#			clear()
#		popup_temp.queue_free()
#
