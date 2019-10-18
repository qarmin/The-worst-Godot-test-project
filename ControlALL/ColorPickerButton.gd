extends ColorPickerButton

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Control(self)
		AutoObjects.A_BaseButton(self)
		AutoControlButton.nodeFunction(self)
		nodeFunction(self)

func nodeFunction(q_ColorPickerButton : ColorPickerButton) -> void:

		if randi() % 2 == 1:
			q_ColorPickerButton.set_pick_color(Autoload.get_color())
		if randi() % 2 == 1:
			q_ColorPickerButton.set_edit_alpha(Autoload.get_bool())
		if randi() % 2 == 1:
			q_ColorPickerButton.get_picker()
		if randi() % 2 == 1:
			q_ColorPickerButton.get_popup()
