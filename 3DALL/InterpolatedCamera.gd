extends InterpolatedCamera

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_target_path(Autoload.get_string())
		if randi() % 2 == 1:
			set_speed(Autoload.get_float())
		if randi() % 2 == 1:
			set_interpolation_enabled(Autoload.get_bool())
		if randi() % 2 == 1:
			set_target(Autoload.get_nodes(self))
