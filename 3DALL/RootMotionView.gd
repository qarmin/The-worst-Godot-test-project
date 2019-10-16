extends RootMotionView

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_animation_path(Autoload.get_string())
		if randi() % 2 == 1:
			set_color(Autoload.get_color())
		if randi() % 2 == 1:
			set_cell_size(Autoload.get_float())
		if randi() % 2 == 1:
			set_radius(Autoload.get_float())
		if randi() % 2 == 1:
			set_zero_y(Autoload.get_bool())
