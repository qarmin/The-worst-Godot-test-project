extends ColorPickerButton

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_ColorPickerButton: ColorPickerButton, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoControlButton.nodeFunction(q_ColorPickerButton)

	if randi() % 2 == 1:
		q_ColorPickerButton.set_pick_color(Autoload.get_color())
	if randi() % 2 == 1:
		q_ColorPickerButton.set_edit_alpha(Autoload.get_bool())

	if randi() % 2 == 1:
		q_ColorPickerButton.get_picker()
	if randi() % 2 == 1:
		q_ColorPickerButton.get_popup()
