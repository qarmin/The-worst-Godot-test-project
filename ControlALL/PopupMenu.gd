extends PopupMenu

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

#BUG
#func _process(delta) -> void:
#	counter -= delta
#	var qq : String = ""
#	qq = qq
#
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#		if randi() % 2 == 1:
#			clear()
#		if randi() % 2 == 1:
#			set_hide_on_item_selection(bool(randi()%2))
#		if randi() % 2 == 1:
#			set_hide_on_checkable_item_selection(bool(randi()%2))
#		if randi() % 2 == 1:
#			set_hide_on_state_item_selection(bool(randi()%2))
#		if randi() % 2 == 1:
#			set_submenu_popup_delay(randf() * Autoload.RANGE - Autoload.RANGE / 2)
#		if randi() % 2 == 1:
#			add_check_item(str(randi()%50000), randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2)
#		if randi() % 2 == 1:
#			add_check_shortcut(ShortCut.new(), randi() % Autoload.RANGE - Autoload.RANGE / 2, bool(randi()%2))
#		if randi() % 2 == 1:
#			add_icon_check_item(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"), str(randi()%50000), randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2)
#		if randi() % 2 == 1:
#			add_icon_check_shortcut(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"), ShortCut.new(), randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2)
#		if randi() % 2 == 1:
#			add_icon_item(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"), str(randi()%50000), randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2)
#		if randi() % 2 == 1:
#			add_icon_shortcut(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"), ShortCut.new(), randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2)
#		if randi() % 2 == 1:
#			add_item(str(randi()%50000), randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2)
#		if randi() % 2 == 1:
#			add_radio_check_item(str(randi()%50000), randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2)
#		if randi() % 2 == 1:
#			add_radio_check_shortcut(ShortCut.new(), randi() % Autoload.RANGE - Autoload.RANGE / 2, bool(randi()%2))
#		if randi() % 2 == 1:
#			add_separator(str(randi()%50000))
#		if randi() % 2 == 1:
#			add_shortcut(ShortCut.new(), randi() % Autoload.RANGE - Autoload.RANGE / 2, bool(randi()%2))
#		if randi() % 2 == 1:
#			add_submenu_item(str(randi()%50000),str(randi()%50000))
#		if randi() % 2 == 1:
#			qq += str(get_item_accelerator(randi() % Autoload.RANGE - Autoload.RANGE / 2))
#		if randi() % 2 == 1:
#			qq += str(get_item_count())
#		if randi() % 2 == 1:
#			qq += str(get_item_icon(randi() % Autoload.RANGE - Autoload.RANGE / 2))
#		if randi() % 2 == 1:
#			qq += str(get_item_id(randi() % Autoload.RANGE - Autoload.RANGE / 2))
#		if randi() % 2 == 1:
#			qq += str(get_item_index(randi() % Autoload.RANGE - Autoload.RANGE / 2))
#		if randi() % 2 == 1:
#			qq += str(get_item_metadata(randi() % Autoload.RANGE - Autoload.RANGE / 2))
#		if randi() % 2 == 1:
#			qq += str(get_item_shortcut(randi() % Autoload.RANGE - Autoload.RANGE / 2))
#		if randi() % 2 == 1:
#			qq += str(get_item_submenu(randi() % Autoload.RANGE - Autoload.RANGE / 2))
#		if randi() % 2 == 1:
#			qq += str(get_item_text(randi() % Autoload.RANGE - Autoload.RANGE / 2))
#		if randi() % 2 == 1:
#			qq += str(get_item_tooltip(randi() % Autoload.RANGE - Autoload.RANGE / 2))
#		if randi() % 2 == 1:
#			qq += str(is_hide_on_window_lose_focus())
#		if randi() % 2 == 1:
#			qq += str(is_item_checkable(randi() % Autoload.RANGE - Autoload.RANGE / 2))
#		if randi() % 2 == 1:
#			qq += str(is_item_checked(randi() % Autoload.RANGE - Autoload.RANGE / 2))
#		if randi() % 2 == 1:
#			qq += str(is_item_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2))
#		if randi() % 2 == 1:
#			qq += str(is_item_radio_checkable(randi() % Autoload.RANGE - Autoload.RANGE / 2))
#		if randi() % 2 == 1:
#			qq += str(is_item_separator(randi() % Autoload.RANGE - Autoload.RANGE / 2))
#		if randi() % 2 == 1:
#			qq += str(is_item_shortcut_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2))
#		if randi() % 2 == 1:
#			remove_item(randi() % Autoload.RANGE - Autoload.RANGE / 2)
#		if randi() % 2 == 1:
#			set_hide_on_window_lose_focus(bool(randi()%2))
#		if randi() % 2 == 1:
#			set_item_accelerator(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
#		if randi() % 2 == 1:
#			set_item_as_checkable(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
#		if randi() % 2 == 1:
#			set_item_as_radio_checkable(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
#		if randi() % 2 == 1:
#			set_item_as_separator(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
#		if randi() % 2 == 1:
#			set_item_checked(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
#		if randi() % 2 == 1:
#			set_item_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
#		if randi() % 2 == 1:
#			set_item_icon(randi() % Autoload.RANGE - Autoload.RANGE / 2,Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
#		if randi() % 2 == 1:
#			set_item_id(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
#		if randi() % 2 == 1:
#			set_item_metadata(randi() % Autoload.RANGE - Autoload.RANGE / 2,PoolByteArray([12,55,1,5,12,5215,215]))
#		if randi() % 2 == 1:
#			set_item_multistate(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
#		if randi() % 2 == 1:
#			set_item_shortcut(randi() % Autoload.RANGE - Autoload.RANGE / 2, ShortCut.new(), bool(randi()%2))
#		if randi() % 2 == 1:
#			set_item_shortcut_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
#		if randi() % 2 == 1:
#			set_item_submenu(randi() % Autoload.RANGE - Autoload.RANGE / 2,str(randi()%50000))
#		if randi() % 2 == 1:
#			set_item_text(randi() % Autoload.RANGE - Autoload.RANGE / 2,str(randi()%50000))
#		if randi() % 2 == 1:
#			set_item_tooltip(randi() % Autoload.RANGE - Autoload.RANGE / 2,str(randi()%50000))
#		if randi() % 2 == 1:
#			toggle_item_checked(randi() % Autoload.RANGE - Autoload.RANGE / 2)
#		if randi() % 2 == 1:
#			toggle_item_multistate(randi() % Autoload.RANGE - Autoload.RANGE / 2)
