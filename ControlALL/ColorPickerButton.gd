extends ColorPickerButton

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_pick_color(Autoload.get_color())
		if randi() % 2 == 1:
			set_edit_alpha(Autoload.get_bool())
		if randi() % 2 == 1:
			Autoload.qq = str(get_picker())
		if randi() % 2 == 1:
			Autoload.qq = str(get_popup())
