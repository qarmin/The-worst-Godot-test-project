extends TabContainer

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Control(self)
		AutoControlContainer.nodeFunction(self)
		nodeFunction(self)

func nodeFunction(q_TabContainer : TabContainer) -> void:

	var popup_menu_temp : PopupMenu = PopupMenu.new()
	
	if randi() % 2 == 1:
		q_TabContainer.set_popup(popup_menu_temp)
	if randi() % 2 == 1:
		q_TabContainer.set_tab_disabled(Autoload.get_int(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_TabContainer.set_tab_icon(Autoload.get_int(),Autoload.loadA("Sprite.png"))
	if randi() % 2 == 1:
		q_TabContainer.set_tab_title(Autoload.get_int(),str(Autoload.get_int()))
	if randi() % 2 == 1:
		q_TabContainer.set_tabs_rearrange_group(Autoload.get_int())

	if randi() % 2 == 1:
		q_TabContainer.get_current_tab_control()
	if randi() % 2 == 1:
		q_TabContainer.get_popup()
	if randi() % 2 == 1:
		q_TabContainer.get_previous_tab()
	if randi() % 2 == 1:
		q_TabContainer.get_tab_control(Autoload.get_int())
	if randi() % 2 == 1:
		q_TabContainer.get_tab_count()
	if randi() % 2 == 1:
		q_TabContainer.get_tab_disabled(Autoload.get_int())
	if randi() % 2 == 1:
		q_TabContainer.get_tab_icon(Autoload.get_int())
	if randi() % 2 == 1:
		q_TabContainer.get_tab_title(Autoload.get_int())
	if randi() % 2 == 1:
		q_TabContainer.get_tabs_rearrange_group()

	if randi() % 2 == 1:
		q_TabContainer.set_tab_align(Autoload.get_int())
	if randi() % 2 == 1:
		q_TabContainer.set_current_tab(Autoload.get_int())
	if randi() % 2 == 1:
		q_TabContainer.set_tabs_visible(Autoload.get_bool())
	if randi() % 2 == 1:
		q_TabContainer.set_drag_to_rearrange_enabled(Autoload.get_bool())

	popup_menu_temp.queue_free()
