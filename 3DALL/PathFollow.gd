extends PathFollow

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_offset(Autoload.get_float())
		if randi() % 2 == 1:
			set_unit_offset(Autoload.get_float())
		if randi() % 2 == 1:
			set_h_offset(Autoload.get_float())
		if randi() % 2 == 1:
			set_v_offset(Autoload.get_float())
		if randi() % 2 == 1:
			set_rotation_mode(Autoload.get_int()) # ENUM RotationMode
		if randi() % 2 == 1:
			set_cubic_interpolation(Autoload.get_bool())
		if randi() % 2 == 1:
			set_loop(Autoload.get_bool())
