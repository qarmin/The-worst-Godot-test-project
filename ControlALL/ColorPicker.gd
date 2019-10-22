extends ColorPicker

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_ColorPicker : ColorPicker) -> void:

	if randi() % 2 == 1:
		AutoControlContainer.nodeFunction(q_ColorPicker)
		AutoObjects.A_BoxContainer(q_ColorPicker)
		
	if randi() % 2 == 1:
		q_ColorPicker.set_pick_color(Autoload.get_color())
	if randi() % 2 == 1:
		q_ColorPicker.set_edit_alpha(Autoload.get_bool())
	if randi() % 2 == 1:
		q_ColorPicker.set_raw_mode(Autoload.get_bool())
	if randi() % 2 == 1:
		q_ColorPicker.set_deferred_mode(Autoload.get_bool())
	if randi() % 2 == 1:
		q_ColorPicker.set_presets_enabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_ColorPicker.set_presets_visible(Autoload.get_bool())
	if randi() % 2 == 1:
		q_ColorPicker.add_preset(Autoload.get_color())
	if randi() % 2 == 1:
		q_ColorPicker.erase_preset(Autoload.get_color())
