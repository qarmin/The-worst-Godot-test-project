extends ItemList

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
		
		var popup_temp : Popup = Popup.new()
		
		set_select_mode(randi()%2)
		set_allow_reselect(bool(randi()%2))
		set_allow_rmb_select(bool(randi()%2))
		set_max_text_lines(randi()%50 + 10)
		set_auto_height(bool(randi()%2))
		set_max_columns(randi()%50)
		set_same_column_width(bool(randi()%2))
		set_fixed_column_width(randi()%50)
		set_icon_mode(randi()%2)
		set_icon_scale(randf() * 50)
		set_fixed_icon_size(Vector2(randf() * 50,randf() * 50))
		add_icon_item(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"),bool(randi()%2))
		add_item(str(randi()%50),load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"),bool(randi()%2))
		ensure_current_is_visible()
		qq += str(get_item_at_position(Vector2(randf() * 50,randf() * 50),bool(randi()%2)))
		qq += str(get_item_count())
		qq += str(get_item_custom_bg_color(0))
		qq += str(get_item_custom_fg_color(0))
		qq += str(get_item_icon(0))
		qq += str(get_item_icon_modulate(0))
		qq += str(get_item_icon_region(0))
		qq += str(get_item_metadata(0))
		qq += str(get_item_text(0))
		qq += str(get_item_tooltip(0))
		qq += str(get_selected_items())
		qq += str(get_v_scroll())
		qq += str(is_anything_selected())
		qq += str(is_item_disabled(0))
		qq += str(is_item_icon_transposed(0))
		qq += str(is_item_selectable(0))
		qq += str(is_item_tooltip_enabled(0))
		qq += str(is_selected(0))
		move_item(0,1)
		remove_item(0)
		select(0,bool(randi()%2))
		set_item_custom_bg_color(0,Color(randf(),randf(),randf(),randf()))
		set_item_custom_fg_color(0,Color(randf(),randf(),randf(),randf()))
		set_item_disabled(0,bool(randi()%2))
		set_item_icon(0,load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		set_item_icon_modulate(0,Color(randf(),randf(),randf(),randf()))
		set_item_icon_region(0,Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		set_item_icon_transposed(0,bool(randi()%2))
		set_item_metadata(0,popup_temp)
		set_item_selectable(0,bool(randi()%2))
		set_item_text(0,str(bool(randi()%2)))
		set_item_tooltip(0,str(bool(randi()%2)))
		set_item_tooltip_enabled(0,bool(randi()%2))
		sort_items_by_text()
		unselect(0)
		unselect_all()
		clear()
		
		if Autoload.WRONG_BUGS:
			set_select_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			set_allow_reselect(bool(randi()%2))
			set_allow_rmb_select(bool(randi()%2))
			set_max_text_lines(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			set_auto_height(bool(randi()%2))
			set_max_columns(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			set_same_column_width(bool(randi()%2))
			set_fixed_column_width(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			set_icon_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			set_icon_scale(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			set_fixed_icon_size(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
			add_icon_item(load("res://RES/Sprite" + str(randi()%10 + 1) + ".png"),bool(randi()%2))
			add_item(str(randi() % Autoload.RANGE - Autoload.RANGE / 2),load("res://RES/Sprite" + str(randi()%10 + 1) + ".png"),bool(randi()%2))
			ensure_current_is_visible()
			qq += str(get_item_at_position(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),bool(randi()%2)))
			qq += str(get_item_count())
			qq += str(get_item_custom_bg_color(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(get_item_custom_fg_color(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(get_item_icon(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(get_item_icon_modulate(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(get_item_icon_region(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(get_item_metadata(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(get_item_text(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(get_item_tooltip(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(get_selected_items())
			qq += str(get_v_scroll())
			qq += str(is_anything_selected())
			qq += str(is_item_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(is_item_icon_transposed(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(is_item_selectable(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(is_item_tooltip_enabled(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			qq += str(is_selected(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			move_item(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
			remove_item(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			select(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
			set_item_custom_bg_color(randi() % Autoload.RANGE - Autoload.RANGE / 2,Color(randf(),randf(),randf(),randf()))
			set_item_custom_fg_color(randi() % Autoload.RANGE - Autoload.RANGE / 2,Color(randf(),randf(),randf(),randf()))
			set_item_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
			set_item_icon(randi() % Autoload.RANGE - Autoload.RANGE / 2,load("res://RES/Sprite" + str(randi()%10 + 1) + ".png"))
			set_item_icon_modulate(randi() % Autoload.RANGE - Autoload.RANGE / 2,Color(randf(),randf(),randf(),randf()))
			set_item_icon_region(randi() % Autoload.RANGE - Autoload.RANGE / 2,Rect2(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)))
			set_item_icon_transposed(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
			set_item_metadata(randi() % Autoload.RANGE - Autoload.RANGE / 2,popup_temp)
			set_item_selectable(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
			set_item_text(randi() % Autoload.RANGE - Autoload.RANGE / 2,str(bool(randi()%2)))
			set_item_tooltip(randi() % Autoload.RANGE - Autoload.RANGE / 2,str(bool(randi()%2)))
			set_item_tooltip_enabled(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
			sort_items_by_text()
			unselect(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			unselect_all()
			clear()
			
			
			
		popup_temp.queue_free()

	else: #RANDI
		var popup_temp : Popup = Popup.new()
		
		if randi() % 2 == 1:
			set_select_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_allow_reselect(bool(randi()%2))
		if randi() % 2 == 1:
			set_allow_rmb_select(bool(randi()%2))
		if randi() % 2 == 1:
			set_max_text_lines(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_auto_height(bool(randi()%2))
		if randi() % 2 == 1:
			set_max_columns(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_same_column_width(bool(randi()%2))
		if randi() % 2 == 1:
			set_fixed_column_width(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_icon_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_icon_scale(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_fixed_icon_size(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			add_icon_item(load("res://RES/Sprite" + str(randi()%10 + 1) + ".png"),bool(randi()%2))
		if randi() % 2 == 1:
			add_item(str(randi() % Autoload.RANGE - Autoload.RANGE / 2),load("res://RES/Sprite" + str(randi()%10 + 1) + ".png"),bool(randi()%2))
		if randi() % 2 == 1:
			ensure_current_is_visible()
		if randi() % 2 == 1:
			qq += str(get_item_at_position(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),bool(randi()%2)))
		if randi() % 2 == 1:
			qq += str(get_item_count())
		if randi() % 2 == 1:
			qq += str(get_item_custom_bg_color(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_item_custom_fg_color(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_item_icon(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_item_icon_modulate(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_item_icon_region(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_item_metadata(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_item_text(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_item_tooltip(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_selected_items())
		if randi() % 2 == 1:
			qq += str(get_v_scroll())
		if randi() % 2 == 1:
			qq += str(is_anything_selected())
		if randi() % 2 == 1:
			qq += str(is_item_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(is_item_icon_transposed(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(is_item_selectable(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(is_item_tooltip_enabled(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(is_selected(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			move_item(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			remove_item(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			select(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
		if randi() % 2 == 1:
			set_item_custom_bg_color(randi() % Autoload.RANGE - Autoload.RANGE / 2,Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			set_item_custom_fg_color(randi() % Autoload.RANGE - Autoload.RANGE / 2,Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			set_item_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
		if randi() % 2 == 1:
			set_item_icon(randi() % Autoload.RANGE - Autoload.RANGE / 2,load("res://RES/Sprite" + str(randi()%10 + 1) + ".png"))
		if randi() % 2 == 1:
			set_item_icon_modulate(randi() % Autoload.RANGE - Autoload.RANGE / 2,Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			set_item_icon_region(randi() % Autoload.RANGE - Autoload.RANGE / 2,Rect2(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)))
		if randi() % 2 == 1:
			set_item_icon_transposed(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
		if randi() % 2 == 1:
			set_item_metadata(randi() % Autoload.RANGE - Autoload.RANGE / 2,popup_temp)
		if randi() % 2 == 1:
			set_item_selectable(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
		if randi() % 2 == 1:
			set_item_text(randi() % Autoload.RANGE - Autoload.RANGE / 2,str(bool(randi()%2)))
		if randi() % 2 == 1:
			set_item_tooltip(randi() % Autoload.RANGE - Autoload.RANGE / 2,str(bool(randi()%2)))
		if randi() % 2 == 1:
			set_item_tooltip_enabled(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
		if randi() % 2 == 1:
			sort_items_by_text()
		if randi() % 2 == 1:
			unselect(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			unselect_all()
		if randi() % 2 == 1:
			clear()
		popup_temp.queue_free()
			
