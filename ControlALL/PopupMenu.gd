extends PopupMenu

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_PopupMenu: PopupMenu, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoControlPopup.nodeFunction(q_PopupMenu)

	### START TEMP
	var temp_ImageTexture: ImageTexture = ImageTexture.new()
#?#	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)

	var temp_ShortCut: ShortCut = ShortCut.new()
#?#	AutoResourcesShortCut.nodeFunction(temp_ShortCut)

### END TEMP

# TEMP TODO
#	if randi() % 2 == 1:
#		q_PopupMenu.set_hide_on_item_selection(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_PopupMenu.set_hide_on_checkable_item_selection(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_PopupMenu.set_hide_on_state_item_selection(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_PopupMenu.set_submenu_popup_delay(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_PopupMenu.set_allow_search(Autoload.get_bool())
#
#	if randi() % 2 == 1:
#		q_PopupMenu.add_check_item(Autoload.get_string(), Autoload.get_int(), Autoload.get_int())
#	if randi() % 2 == 1:
#		q_PopupMenu.add_check_shortcut(temp_ShortCut, Autoload.get_int(), Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_PopupMenu.add_icon_check_item(temp_ImageTexture, Autoload.get_string(), Autoload.get_int(), Autoload.get_int())
#	if randi() % 2 == 1:
#		q_PopupMenu.add_icon_check_shortcut(temp_ImageTexture, temp_ShortCut, Autoload.get_int(), Autoload.get_int())
#	if randi() % 2 == 1:
#		q_PopupMenu.add_icon_item(temp_ImageTexture, Autoload.get_string(), Autoload.get_int(), Autoload.get_int())
#	if randi() % 2 == 1:
#		q_PopupMenu.add_icon_radio_check_item(temp_ImageTexture, Autoload.get_string(), Autoload.get_int(), Autoload.get_int())
#	if randi() % 2 == 1:
#		q_PopupMenu.add_icon_radio_check_shortcut(temp_ImageTexture,temp_ShortCut, Autoload.get_int(), Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_PopupMenu.add_icon_shortcut(temp_ImageTexture, temp_ShortCut, Autoload.get_int(), Autoload.get_int())
#	if randi() % 2 == 1:
#		q_PopupMenu.add_item(Autoload.get_string(), Autoload.get_int(), Autoload.get_int())
#	if randi() % 2 == 1:
#		q_PopupMenu.add_multistate_item(Autoload.get_string(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int())
#	if randi() % 2 == 1:
#		q_PopupMenu.add_radio_check_item(Autoload.get_string(), Autoload.get_int(), Autoload.get_int())
#	if randi() % 2 == 1:
#		q_PopupMenu.add_radio_check_shortcut(temp_ShortCut, Autoload.get_int(), Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_PopupMenu.add_separator(Autoload.get_string())
#	if randi() % 2 == 1:
#		q_PopupMenu.add_shortcut(temp_ShortCut, Autoload.get_int(), Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_PopupMenu.add_submenu_item(Autoload.get_string(),Autoload.get_string())
#
#	if randi() % 2 == 1:
#		q_PopupMenu.clear()
#
#	if randi() % 2 == 1:
#		q_PopupMenu.get_item_accelerator(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_PopupMenu.get_item_count()
#	if randi() % 2 == 1:
#		q_PopupMenu.get_item_icon(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_PopupMenu.get_item_id(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_PopupMenu.get_item_index(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_PopupMenu.get_item_metadata(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_PopupMenu.get_item_shortcut(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_PopupMenu.get_item_submenu(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_PopupMenu.get_item_text(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_PopupMenu.get_item_tooltip(Autoload.get_int())
#
#	if randi() % 2 == 1:
#		q_PopupMenu.is_hide_on_window_lose_focus()
#	if randi() % 2 == 1:
#		q_PopupMenu.is_item_checkable(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_PopupMenu.is_item_checked(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_PopupMenu.is_item_disabled(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_PopupMenu.is_item_radio_checkable(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_PopupMenu.is_item_separator(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_PopupMenu.is_item_shortcut_disabled(Autoload.get_int())
#
#	if randi() % 2 == 1:
#		q_PopupMenu.remove_item(Autoload.get_int())
#
#	if randi() % 2 == 1:
#		q_PopupMenu.set_hide_on_window_lose_focus(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_PopupMenu.set_item_accelerator(Autoload.get_int(),Autoload.get_int())
#	if randi() % 2 == 1:
#		q_PopupMenu.set_item_as_checkable(Autoload.get_int(),Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_PopupMenu.set_item_as_radio_checkable(Autoload.get_int(),Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_PopupMenu.set_item_as_separator(Autoload.get_int(),Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_PopupMenu.set_item_checked(Autoload.get_int(),Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_PopupMenu.set_item_disabled(Autoload.get_int(),Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_PopupMenu.set_item_icon(Autoload.get_int(),temp_ImageTexture)
#	if randi() % 2 == 1:
#		q_PopupMenu.set_item_id(Autoload.get_int(),Autoload.get_int())
#	if randi() % 2 == 1:
#		q_PopupMenu.set_item_metadata(Autoload.get_int(),Autoload.get_packedbytearray())
#	if randi() % 2 == 1:
#		q_PopupMenu.set_item_multistate(Autoload.get_int(),Autoload.get_int())
#	if randi() % 2 == 1:
#		q_PopupMenu.set_item_shortcut(Autoload.get_int(), temp_ShortCut, Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_PopupMenu.set_item_shortcut_disabled(Autoload.get_int(),Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_PopupMenu.set_item_submenu(Autoload.get_int(),Autoload.get_string())
#	if randi() % 2 == 1:
#		q_PopupMenu.set_item_text(Autoload.get_int(),Autoload.get_string())
#	if randi() % 2 == 1:
#		q_PopupMenu.set_item_tooltip(Autoload.get_int(),Autoload.get_string())
#
#	if randi() % 2 == 1:
#		q_PopupMenu.toggle_item_checked(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_PopupMenu.toggle_item_multistate(Autoload.get_int())
