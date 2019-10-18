extends SkeletonIK

onready var counter : float = Autoload.get_rand_time()

	queue_free()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_root_bone(Autoload.get_string())
		if randi() % 2 == 1:
			set_tip_bone(Autoload.get_string())
		if randi() % 2 == 1:
			set_interpolation(Autoload.get_float())
		if randi() % 2 == 1:
			set_target_transform(Autoload.get_transform())
		if randi() % 2 == 1:
			set_override_tip_basis(Autoload.get_bool())
		if randi() % 2 == 1:
			set_use_magnet(Autoload.get_bool())
		if randi() % 2 == 1:
			set_magnet_position(Autoload.get_vector3())
		if randi() % 2 == 1:
			set_target_node(Autoload.get_string())
		if randi() % 2 == 1:
			set_min_distance(Autoload.get_float())
		if randi() % 2 == 1:
			set_max_iterations(Autoload.get_int())

		if randi() % 2 == 1:
			Autoload.qq = str(get_parent_skeleton())
		if randi() % 2 == 1:
			Autoload.qq = str(is_running())
		if randi() % 2 == 1:
			start(Autoload.get_bool())
		if randi() % 2 == 1:
			stop()
