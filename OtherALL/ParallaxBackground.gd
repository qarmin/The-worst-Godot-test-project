extends ParallaxBackground

onready var counter : float = Autoload.get_rand_time()

	queue_free()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_scroll_offset(Autoload.get_vector2())
		if randi() % 2 == 1:
			set_scroll_base_offset(Autoload.get_vector2())
		if randi() % 2 == 1:
			set_scroll_base_scale(Autoload.get_vector2())
		if randi() % 2 == 1:
			set_limit_begin(Autoload.get_vector2())
		if randi() % 2 == 1:
			set_limit_end(Autoload.get_vector2())
		if randi() % 2 == 1:
			set_ignore_camera_zoom(Autoload.get_bool())
