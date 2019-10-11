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
#			set_select_mode(Autoload.get_randi())
#		if randi() % 2 == 1:
#			set_allow_reselect(bool(randi()%2))
#		if randi() % 2 == 1:
#			set_allow_rmb_select(bool(randi()%2))
#		if randi() % 2 == 1:
#			set_max_text_lines(Autoload.get_randi())
#		if randi() % 2 == 1:
#			set_auto_height(bool(randi()%2))
#		if randi() % 2 == 1:
#			set_max_columns(Autoload.get_randi())
#		if randi() % 2 == 1:
#			set_same_column_width(bool(randi()%2))
#		if randi() % 2 == 1:
#			set_fixed_column_width(Autoload.get_randi())
#		if randi() % 2 == 1:
#			set_icon_mode(Autoload.get_randi())
#		if randi() % 2 == 1:
#			set_icon_scale(Autoload.get_randf())
#		if randi() % 2 == 1:
#			set_fixed_icon_size(Vector2(Autoload.get_randf(), Autoload.get_randf()))
#		if randi() % 2 == 1:
#			add_icon_item(Autoload.loadA("res://RES/Sprite.png"),bool(randi()%2))
#		if randi() % 2 == 1:
#			add_item(str(Autoload.get_randi()),Autoload.loadA("res://RES/Sprite.png"),bool(randi()%2))
#		if randi() % 2 == 1:
#			ensure_current_is_visible()
#		if randi() % 2 == 1:
#			qq += str(get_item_at_position(Vector2(Autoload.get_randf(), Autoload.get_randf()),bool(randi()%2)))
#		if randi() % 2 == 1:
#			qq += str(get_item_count())
#		if randi() % 2 == 1:
#			qq += str(get_item_custom_bg_color(Autoload.get_randi()))
#		if randi() % 2 == 1:
#			qq += str(get_item_custom_fg_color(Autoload.get_randi()))
#		if randi() % 2 == 1:
#			qq += str(get_item_icon(Autoload.get_randi()))
#		if randi() % 2 == 1:
#			qq += str(get_item_icon_modulate(Autoload.get_randi()))
#		if randi() % 2 == 1:
#			qq += str(get_item_icon_region(Autoload.get_randi()))
#		if randi() % 2 == 1:
#			qq += str(get_item_metadata(Autoload.get_randi()))
#		if randi() % 2 == 1:
#			qq += str(get_item_text(Autoload.get_randi()))
#		if randi() % 2 == 1:
#			qq += str(get_item_tooltip(Autoload.get_randi()))
#		if randi() % 2 == 1:
#			qq += str(get_selected_items())
#		if randi() % 2 == 1:
#			qq += str(get_v_scroll())
#		if randi() % 2 == 1:
#			qq += str(is_anything_selected())
#		if randi() % 2 == 1:
#			qq += str(is_item_disabled(Autoload.get_randi()))
#		if randi() % 2 == 1:
#			qq += str(is_item_icon_transposed(Autoload.get_randi()))
#		if randi() % 2 == 1:
#			qq += str(is_item_selectable(Autoload.get_randi()))
#		if randi() % 2 == 1:
#			qq += str(is_item_tooltip_enabled(Autoload.get_randi()))
#		if randi() % 2 == 1:
#			qq += str(is_selected(Autoload.get_randi()))
#		if randi() % 2 == 1:
#			move_item(Autoload.get_randi(),Autoload.get_randi())
#		if randi() % 2 == 1:
#			remove_item(Autoload.get_randi())
#		if randi() % 2 == 1:
#			select(Autoload.get_randi(),bool(randi()%2))
#		if randi() % 2 == 1:
#			set_item_custom_bg_color(Autoload.get_randi(),Color(randf(),randf(),randf(),randf()))
#		if randi() % 2 == 1:
#			set_item_custom_fg_color(Autoload.get_randi(),Color(randf(),randf(),randf(),randf()))
#		if randi() % 2 == 1:
#			set_item_disabled(Autoload.get_randi(),bool(randi()%2))
#		if randi() % 2 == 1:
#			set_item_icon(Autoload.get_randi(),Autoload.loadA("res://RES/Sprite.png"))
#		if randi() % 2 == 1:
#			set_item_icon_modulate(Autoload.get_randi(),Color(randf(),randf(),randf(),randf()))
#		if randi() % 2 == 1:
#			set_item_icon_region(Autoload.get_randi(),Rect2(Vector2(Autoload.get_randf(), Autoload.get_randf()),Vector2(Autoload.get_randf(), Autoload.get_randf())))
#		if randi() % 2 == 1:
#			set_item_icon_transposed(Autoload.get_randi(),bool(randi()%2))
#		if randi() % 2 == 1:
#			set_item_metadata(Autoload.get_randi(),popup_temp)
#		if randi() % 2 == 1:
#			set_item_selectable(Autoload.get_randi(),bool(randi()%2))
#		if randi() % 2 == 1:
#			set_item_text(Autoload.get_randi(),str(bool(randi()%2)))
#		if randi() % 2 == 1:
#			set_item_tooltip(Autoload.get_randi(),str(bool(randi()%2)))
#		if randi() % 2 == 1:
#			set_item_tooltip_enabled(Autoload.get_randi(),bool(randi()%2))
#		if randi() % 2 == 1:
#			sort_items_by_text()
#		if randi() % 2 == 1:
#			unselect(Autoload.get_randi())
#		if randi() % 2 == 1:
#			unselect_all()
#		if randi() % 2 == 1:
#			clear()
#		popup_temp.queue_free()
#
