extends Tabs

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_Tabs: Tabs, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Tabs)
		AutoObjects.A_Node(q_Tabs)
		AutoObjects.A_CanvasItem(q_Tabs)
		AutoObjects.A_Control(q_Tabs)

	### START TEMP
	var temp_ImageTexture: ImageTexture = ImageTexture.new()
#?#	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)

	### END TEMP

	if randi() % 2 == 1:
		for _i in range(3):
			q_Tabs.add_tab(Autoload.get_string(), temp_ImageTexture)
	if randi() % 2 == 1:
		q_Tabs.ensure_tab_visible(Autoload.get_int())
	if randi() % 2 == 1:
		q_Tabs.get_offset_buttons_visible()
	if randi() % 2 == 1:
		q_Tabs.get_select_with_rmb()
	if randi() % 2 == 1:
		q_Tabs.get_tab_count()
	if randi() % 2 == 1:
		q_Tabs.get_tab_disabled(Autoload.get_int())
	if randi() % 2 == 1:
		q_Tabs.get_tab_icon(Autoload.get_int())
	if randi() % 2 == 1:
		q_Tabs.get_tab_offset()
	if randi() % 2 == 1:
		q_Tabs.get_tab_rect(Autoload.get_int())
	if randi() % 2 == 1:
		q_Tabs.get_tab_title(Autoload.get_int())
	if randi() % 2 == 1:
		q_Tabs.get_tabs_rearrange_group()

	if randi() % 2 == 1:
		q_Tabs.set_current_tab(Autoload.get_int())
	if randi() % 2 == 1:
		q_Tabs.set_tab_align(Autoload.get_int())
	if randi() % 2 == 1:
		q_Tabs.set_tab_close_display_policy(Autoload.get_int())
	if randi() % 2 == 1:
		q_Tabs.set_scrolling_enabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Tabs.set_drag_to_rearrange_enabled(Autoload.get_bool())

	if randi() % 2 == 1:
		q_Tabs.move_tab(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		for _i in range(q_Tabs.get_tab_count()):
			q_Tabs.remove_tab(randi() % q_Tabs.get_tab_count())

	if randi() % 2 == 1:
		q_Tabs.set_select_with_rmb(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Tabs.set_tab_disabled(Autoload.get_int(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_Tabs.set_tab_icon(Autoload.get_int(), temp_ImageTexture)
	if randi() % 2 == 1:
		q_Tabs.set_tab_title(Autoload.get_int(), Autoload.get_string())
	if randi() % 2 == 1:
		q_Tabs.set_tabs_rearrange_group(Autoload.get_int())
