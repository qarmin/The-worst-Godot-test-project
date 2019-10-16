extends CanvasLayer

onready var counter : float = Autoload.get_rand_time()

	queue_free()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_layer(Autoload.get_int())
		if randi() % 2 == 1:
			set_offset(Autoload.get_vector2())
		if randi() % 2 == 1:
			set_rotation_degrees(Autoload.get_float())
		if randi() % 2 == 1:
			set_rotation(Autoload.get_float())
		if randi() % 2 == 1:
			set_scale(Autoload.get_vector2())
		if randi() % 2 == 1:
			set_transform(Autoload.get_transform2d())
		if randi() % 2 == 1:
			set_custom_viewport(get_parent())
		if randi() % 2 == 1:
			set_follow_viewport(Autoload.get_bool())
		if randi() % 2 == 1:
			set_follow_viewport_scale(Autoload.get_float())

		if randi() % 2 == 1:
			Autoload.qq = str(get_canvas())
