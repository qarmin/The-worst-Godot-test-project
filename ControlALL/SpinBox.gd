extends SpinBox

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_align(Autoload.get_int())
		if randi() % 2 == 1:
			set_editable(Autoload.get_bool())
		if randi() % 2 == 1:
			set_prefix(Autoload.get_string())
		if randi() % 2 == 1:
			set_suffix(Autoload.get_string())
		if randi() % 2 == 1:
			Autoload.qq = str(get_line_edit())
