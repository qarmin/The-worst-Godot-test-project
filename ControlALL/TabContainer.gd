extends TabContainer

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_TabContainer : TabContainer, can_reset : bool = false) -> void:
	
	if randi() % 2 == 1:
		AutoControlContainer.nodeFunction(q_TabContainer)
		
	### START TEMP
	var temp_ImageTexture : ImageTexture = ImageTexture.new()
#?#	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)

	var temp_PopupMenu : PopupMenu = PopupMenu.new()
	AutoControlPopupMenu.nodeFunction(temp_PopupMenu)
	### END TEMP


	if randi() % 2 == 1:
		q_TabContainer.set_popup(temp_PopupMenu)
	if randi() % 2 == 1:
		q_TabContainer.set_tab_disabled(Autoload.get_int(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_TabContainer.set_tab_icon(Autoload.get_int(),temp_ImageTexture)
	if randi() % 2 == 1:
		q_TabContainer.set_tab_title(Autoload.get_int(),Autoload.get_string())
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

	### CLEANING
	temp_PopupMenu.queue_free()
	### END CLEANING
