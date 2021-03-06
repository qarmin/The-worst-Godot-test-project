extends ItemList

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_ItemList: ItemList, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_ItemList)
		AutoObjects.A_Node(q_ItemList)
		AutoObjects.A_CanvasItem(q_ItemList)
		AutoObjects.A_Control(q_ItemList)

	### START TEMP
	var temp_ImageTexture: ImageTexture = ImageTexture.new()
#?#	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)

	var temp_PopupMenu: PopupMenu = PopupMenu.new()
	AutoControlPopupMenu.nodeFunction(temp_PopupMenu)
	### END TEMP

	if randi() % 2 == 1:
		q_ItemList.set_select_mode(Autoload.get_int())
	if randi() % 2 == 1:
		q_ItemList.set_allow_reselect(Autoload.get_bool())
	if randi() % 2 == 1:
		q_ItemList.set_allow_rmb_select(Autoload.get_bool())
	if randi() % 2 == 1:
		q_ItemList.set_max_text_lines(Autoload.get_int())
	if randi() % 2 == 1:
		q_ItemList.set_auto_height(Autoload.get_bool())
	if randi() % 2 == 1:
		q_ItemList.set_max_columns(Autoload.get_int())
	if randi() % 2 == 1:
		q_ItemList.set_same_column_width(Autoload.get_bool())
	if randi() % 2 == 1:
		q_ItemList.set_fixed_column_width(Autoload.get_int())
	if randi() % 2 == 1:
		q_ItemList.set_icon_mode(Autoload.get_int())
	if randi() % 2 == 1:
		q_ItemList.set_icon_scale(Autoload.get_float())
	if randi() % 2 == 1:
		q_ItemList.set_fixed_icon_size(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_ItemList.add_icon_item(temp_ImageTexture, Autoload.get_bool())
	if randi() % 2 == 1:
		q_ItemList.add_item(Autoload.get_string(), temp_ImageTexture, Autoload.get_bool())
	if randi() % 2 == 1:
		q_ItemList.ensure_current_is_visible()
	if randi() % 2 == 1:
		q_ItemList.get_item_at_position(Autoload.get_vector2(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_ItemList.get_item_count()
	if randi() % 2 == 1:
		q_ItemList.get_item_custom_bg_color(Autoload.get_int())
	if randi() % 2 == 1:
		q_ItemList.get_item_custom_fg_color(Autoload.get_int())
	if randi() % 2 == 1:
		q_ItemList.get_item_icon(Autoload.get_int())
	if randi() % 2 == 1:
		q_ItemList.get_item_icon_modulate(Autoload.get_int())
	if randi() % 2 == 1:
		q_ItemList.get_item_icon_region(Autoload.get_int())
	if randi() % 2 == 1:
		q_ItemList.get_item_metadata(Autoload.get_int())
	if randi() % 2 == 1:
		q_ItemList.get_item_text(Autoload.get_int())
	if randi() % 2 == 1:
		q_ItemList.get_item_tooltip(Autoload.get_int())
	if randi() % 2 == 1:
		q_ItemList.get_selected_items()
	if randi() % 2 == 1:
		q_ItemList.get_v_scroll()
	if randi() % 2 == 1:
		q_ItemList.is_anything_selected()
	if randi() % 2 == 1:
		q_ItemList.is_item_disabled(Autoload.get_int())
	if randi() % 2 == 1:
		q_ItemList.is_item_icon_transposed(Autoload.get_int())
	if randi() % 2 == 1:
		q_ItemList.is_item_selectable(Autoload.get_int())
	if randi() % 2 == 1:
		q_ItemList.is_item_tooltip_enabled(Autoload.get_int())
	if randi() % 2 == 1:
		q_ItemList.is_selected(Autoload.get_int())
	if randi() % 2 == 1:
		q_ItemList.move_item(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_ItemList.remove_item(Autoload.get_int())
	if randi() % 2 == 1:
		q_ItemList.select(Autoload.get_int(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_ItemList.set_item_custom_bg_color(Autoload.get_int(), Autoload.get_color())
	if randi() % 2 == 1:
		q_ItemList.set_item_custom_fg_color(Autoload.get_int(), Autoload.get_color())
	if randi() % 2 == 1:
		q_ItemList.set_item_disabled(Autoload.get_int(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_ItemList.set_item_icon(Autoload.get_int(), temp_ImageTexture)
	if randi() % 2 == 1:
		q_ItemList.set_item_icon_modulate(Autoload.get_int(), Autoload.get_color())
	if randi() % 2 == 1:
		q_ItemList.set_item_icon_region(Autoload.get_int(), Autoload.get_rect2())
	if randi() % 2 == 1:
		q_ItemList.set_item_icon_transposed(Autoload.get_int(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_ItemList.set_item_metadata(Autoload.get_int(), temp_PopupMenu)
	if randi() % 2 == 1:
		q_ItemList.set_item_selectable(Autoload.get_int(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_ItemList.set_item_text(Autoload.get_int(), Autoload.get_string())
	if randi() % 2 == 1:
		q_ItemList.set_item_tooltip(Autoload.get_int(), Autoload.get_string())
	if randi() % 2 == 1:
		q_ItemList.set_item_tooltip_enabled(Autoload.get_int(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_ItemList.sort_items_by_text()
#	if randi() % 2 == 1:
#		q_ItemList.unselect(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_ItemList.unselect_all()
	if randi() % 2 == 1:
		q_ItemList.clear()

	### CLEANING
	temp_PopupMenu.queue_free()
	### END CLEANING
