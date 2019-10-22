extends PopupMenu

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_PopupMenu : PopupMenu, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoControlPopup.nodeFunction(q_PopupMenu)
		
	if randi() % 2 == 1:
		q_PopupMenu.clear()
	if randi() % 2 == 1:
		q_PopupMenu.set_hide_on_item_selection(Autoload.get_bool())
	if randi() % 2 == 1:
		q_PopupMenu.set_hide_on_checkable_item_selection(Autoload.get_bool())
	if randi() % 2 == 1:
		q_PopupMenu.set_hide_on_state_item_selection(Autoload.get_bool())
	if randi() % 2 == 1:
		q_PopupMenu.set_submenu_popup_delay(Autoload.get_float())
	if randi() % 2 == 1:
		q_PopupMenu.add_check_item(Autoload.get_string(), Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_PopupMenu.add_check_shortcut(ShortCut.new(), Autoload.get_int(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_PopupMenu.add_icon_check_item(Autoload.loadA("Sprite.png"), Autoload.get_string(), Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_PopupMenu.add_icon_check_shortcut(Autoload.loadA("Sprite.png"), ShortCut.new(), Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_PopupMenu.add_icon_item(Autoload.loadA("Sprite.png"), Autoload.get_string(), Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_PopupMenu.add_icon_shortcut(Autoload.loadA("Sprite.png"), ShortCut.new(), Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_PopupMenu.add_item(Autoload.get_string(), Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_PopupMenu.add_radio_check_item(Autoload.get_string(), Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_PopupMenu.add_radio_check_shortcut(ShortCut.new(), Autoload.get_int(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_PopupMenu.add_separator(Autoload.get_string())
	if randi() % 2 == 1:
		q_PopupMenu.add_shortcut(ShortCut.new(), Autoload.get_int(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_PopupMenu.add_submenu_item(Autoload.get_string(),Autoload.get_string())
	if randi() % 2 == 1:
		q_PopupMenu.get_item_accelerator(Autoload.get_int())
	if randi() % 2 == 1:
		q_PopupMenu.get_item_count()
	if randi() % 2 == 1:
		q_PopupMenu.get_item_icon(Autoload.get_int())
	if randi() % 2 == 1:
		q_PopupMenu.get_item_id(Autoload.get_int())
	if randi() % 2 == 1:
		q_PopupMenu.get_item_index(Autoload.get_int())
	if randi() % 2 == 1:
		q_PopupMenu.get_item_metadata(Autoload.get_int())
	if randi() % 2 == 1:
		q_PopupMenu.get_item_shortcut(Autoload.get_int())
	if randi() % 2 == 1:
		q_PopupMenu.get_item_submenu(Autoload.get_int())
	if randi() % 2 == 1:
		q_PopupMenu.get_item_text(Autoload.get_int())
	if randi() % 2 == 1:
		q_PopupMenu.get_item_tooltip(Autoload.get_int())
	if randi() % 2 == 1:
		q_PopupMenu.is_hide_on_window_lose_focus()
	if randi() % 2 == 1:
		q_PopupMenu.is_item_checkable(Autoload.get_int())
	if randi() % 2 == 1:
		q_PopupMenu.is_item_checked(Autoload.get_int())
	if randi() % 2 == 1:
		q_PopupMenu.is_item_disabled(Autoload.get_int())
	if randi() % 2 == 1:
		q_PopupMenu.is_item_radio_checkable(Autoload.get_int())
	if randi() % 2 == 1:
		q_PopupMenu.is_item_separator(Autoload.get_int())
	if randi() % 2 == 1:
		q_PopupMenu.is_item_shortcut_disabled(Autoload.get_int())
	if randi() % 2 == 1:
		q_PopupMenu.remove_item(Autoload.get_int())
	if randi() % 2 == 1:
		q_PopupMenu.set_hide_on_window_lose_focus(Autoload.get_bool())
	if randi() % 2 == 1:
		q_PopupMenu.set_item_accelerator(Autoload.get_int(),Autoload.get_int())
	if randi() % 2 == 1:
		q_PopupMenu.set_item_as_checkable(Autoload.get_int(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_PopupMenu.set_item_as_radio_checkable(Autoload.get_int(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_PopupMenu.set_item_as_separator(Autoload.get_int(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_PopupMenu.set_item_checked(Autoload.get_int(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_PopupMenu.set_item_disabled(Autoload.get_int(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_PopupMenu.set_item_icon(Autoload.get_int(),Autoload.loadA("Sprite.png"))
	if randi() % 2 == 1:
		q_PopupMenu.set_item_id(Autoload.get_int(),Autoload.get_int())
	if randi() % 2 == 1:
		q_PopupMenu.set_item_metadata(Autoload.get_int(),Autoload.get_poolbytearray())
	if randi() % 2 == 1:
		q_PopupMenu.set_item_multistate(Autoload.get_int(),Autoload.get_int())
	if randi() % 2 == 1:
		q_PopupMenu.set_item_shortcut(Autoload.get_int(), ShortCut.new(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_PopupMenu.set_item_shortcut_disabled(Autoload.get_int(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_PopupMenu.set_item_submenu(Autoload.get_int(),Autoload.get_string())
	if randi() % 2 == 1:
		q_PopupMenu.set_item_text(Autoload.get_int(),Autoload.get_string())
	if randi() % 2 == 1:
		q_PopupMenu.set_item_tooltip(Autoload.get_int(),Autoload.get_string())
	if randi() % 2 == 1:
		q_PopupMenu.toggle_item_checked(Autoload.get_int())
	if randi() % 2 == 1:
		q_PopupMenu.toggle_item_multistate(Autoload.get_int())
