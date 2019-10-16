extends TabContainer

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

#BUG
#	if counter <= 0:
		counter = Autoload.get_rand_time()
#
#
#		var popup_menu_temp : PopupMenu = PopupMenu.new()
#		if randi() % 2 == 1:
#			set_popup(popup_menu_temp)
#		if randi() % 2 == 1:
#			set_tab_disabled(Autoload.get_int(),Autoload.get_bool())
#		if randi() % 2 == 1:
#			set_tab_icon(Autoload.get_int(),Autoload.loadA("Sprite.png"))
#		if randi() % 2 == 1:
#			set_tab_title(Autoload.get_int(),str(Autoload.get_int()))
#		if randi() % 2 == 1:
#			set_tabs_rearrange_group(Autoload.get_int())
#
#		if randi() % 2 == 1:
#			Autoload.qq = str(get_current_tab_control())
#		if randi() % 2 == 1:
#			Autoload.qq = str(get_popup())
#		if randi() % 2 == 1:
#			Autoload.qq = str(get_previous_tab())
#		if randi() % 2 == 1:
#			Autoload.qq = str(get_tab_control(Autoload.get_int()))
#		if randi() % 2 == 1:
#			Autoload.qq = str(get_tab_count())
#		if randi() % 2 == 1:
#			Autoload.qq = str(get_tab_disabled(Autoload.get_int()))
#		if randi() % 2 == 1:
#			Autoload.qq = str(get_tab_icon(Autoload.get_int()))
#		if randi() % 2 == 1:
#			Autoload.qq = str(get_tab_title(Autoload.get_int()))
#		if randi() % 2 == 1:
#			Autoload.qq = str(get_tabs_rearrange_group())
#
#		if randi() % 2 == 1:
#			set_tab_align(Autoload.get_int())
#		if randi() % 2 == 1:
#			set_current_tab(Autoload.get_int())
#		if randi() % 2 == 1:
#			set_tabs_visible(Autoload.get_bool())
#		if randi() % 2 == 1:
#			set_drag_to_rearrange_enabled(Autoload.get_bool())
