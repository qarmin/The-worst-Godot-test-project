extends TabContainer

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x


func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
#BUG
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#		var popup_menu_temp : PopupMenu = PopupMenu.new()
#		if randi() % 2 == 1:
#			set_popup(popup_menu_temp)
#		if randi() % 2 == 1:
#			set_tab_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
#		if randi() % 2 == 1:
#			set_tab_icon(randi() % Autoload.RANGE - Autoload.RANGE / 2,Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
#		if randi() % 2 == 1:
#			set_tab_title(randi() % Autoload.RANGE - Autoload.RANGE / 2,str(randi() % Autoload.RANGE - Autoload.RANGE / 2))
#		if randi() % 2 == 1:
#			set_tabs_rearrange_group(0)
#
#		if randi() % 2 == 1:
#			qq += str(get_current_tab_control())
#		if randi() % 2 == 1:
#			qq += str(get_popup())
#		if randi() % 2 == 1:
#			qq += str(get_previous_tab())
#		if randi() % 2 == 1:
#			qq += str(get_tab_control(randi() % Autoload.RANGE - Autoload.RANGE / 2))
#		if randi() % 2 == 1:
#			qq += str(get_tab_count())
#		if randi() % 2 == 1:
#			qq += str(get_tab_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2))
#		if randi() % 2 == 1:
#			qq += str(get_tab_icon(randi() % Autoload.RANGE - Autoload.RANGE / 2))
#		if randi() % 2 == 1:
#			qq += str(get_tab_title(randi() % Autoload.RANGE - Autoload.RANGE / 2))
#		if randi() % 2 == 1:
#			qq += str(get_tabs_rearrange_group())
#
#		if randi() % 2 == 1:
#			set_tab_align(randi() % Autoload.RANGE - Autoload.RANGE / 2)
#		if randi() % 2 == 1:
#			set_current_tab(randi() % Autoload.RANGE - Autoload.RANGE / 2)
#		if randi() % 2 == 1:
#			set_tabs_visible(bool(randi()%2))
#		if randi() % 2 == 1:
#			set_drag_to_rearrange_enabled(bool(randi()%2))
