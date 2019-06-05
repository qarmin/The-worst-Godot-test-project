extends PopupMenu

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
		set_hide_on_item_selection(bool(randi()%2))
		set_hide_on_checkable_item_selection(bool(randi()%2))
		set_hide_on_state_item_selection(bool(randi()%2))
		set_submenu_popup_delay(randf() / 5.0)
		add_check_item(str(randi()%50000), -1, randi()%50)
		add_check_shortcut(ShortCut.new(), -1, bool(randi()%2))
		add_icon_check_item(load("res://Sprite" + str(randi()%4 + 1) + ".png"), str(randi()%50000), -1, randi()%50)
		add_icon_check_shortcut(load("res://Sprite" + str(randi()%4 + 1) + ".png"), ShortCut.new(), -1, randi()%50)
		add_icon_item(load("res://Sprite" + str(randi()%4 + 1) + ".png"), str(randi()%50000), -1, randi()%50)
		add_icon_shortcut(load("res://Sprite" + str(randi()%4 + 1) + ".png"), ShortCut.new(), -1, randi()%50)
		add_item(str(randi()%50000), -1, randi()%50)
		add_radio_check_item(str(randi()%50000), -1, randi()%50)
		add_radio_check_shortcut(ShortCut.new(), -1, bool(randi()%2))
		add_separator(str(randi()%50000))
		add_shortcut(ShortCut.new(), -1, bool(randi()%2))
		add_submenu_item(str(randi()%50000),str(randi()%50000))
		qq += str(get_item_accelerator(0))
		qq += str(get_item_count())
		qq += str(get_item_icon(0))
		qq += str(get_item_id(0))
		qq += str(get_item_index(0))
		qq += str(get_item_metadata(0))
		qq += str(get_item_shortcut(0))
		qq += str(get_item_submenu(0))
		qq += str(get_item_text(0))
		qq += str(get_item_tooltip(0))
		qq += str(is_hide_on_window_lose_focus())
		qq += str(is_item_checkable(0))
		qq += str(is_item_checked(0))
		qq += str(is_item_disabled(0))
		qq += str(is_item_radio_checkable(0))
		qq += str(is_item_separator(0))
		qq += str(is_item_shortcut_disabled(0))
		remove_item(0)
		set_hide_on_window_lose_focus(bool(randi()%2))
		set_item_accelerator(0,randi()%5)
		set_item_as_checkable(0,bool(randi()%2))
		set_item_as_radio_checkable(0,bool(randi()%2))
		set_item_as_separator(0,bool(randi()%2))
		set_item_checked(0,bool(randi()%2))
		set_item_disabled(0,bool(randi()%2))
		set_item_icon(0,load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		set_item_id(0,randi()%5)
		set_item_metadata(0,PoolByteArray([]))
		set_item_multistate(0,randi()%5)
		set_item_shortcut(0, ShortCut.new(), bool(randi()%2))
		set_item_shortcut_disabled(0,bool(randi()%2))
		set_item_submenu(0,str(randi()%50000))
		set_item_text(0,str(randi()%50000))
		set_item_tooltip(0,str(randi()%50000))
		toggle_item_checked(0)
		toggle_item_multistate(0)
		
		qq = qq
		
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x