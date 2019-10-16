extends SoftBody

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_collision_layer(Autoload.get_int())
		if randi() % 2 == 1:
			set_collision_mask(Autoload.get_int())
		if randi() % 2 == 1:
			set_parent_collision_ignore(Autoload.get_string())
		if randi() % 2 == 1:
			set_simulation_precision(Autoload.get_int())
		if randi() % 2 == 1:
			set_total_mass(Autoload.get_float())
		if randi() % 2 == 1:
			set_linear_stiffness(Autoload.get_float())
		if randi() % 2 == 1:
			set_areaAngular_stiffness(Autoload.get_float())
		if randi() % 2 == 1:
			set_volume_stiffness(Autoload.get_float())
		if randi() % 2 == 1:
			set_pressure_coefficient(Autoload.get_float())
		if randi() % 2 == 1:
			set_damping_coefficient(Autoload.get_float())
		if randi() % 2 == 1:
			set_drag_coefficient(Autoload.get_float())
		if randi() % 2 == 1:
			set_pose_matching_coefficient(Autoload.get_float())

		if randi() % 2 == 1:
			add_collision_exception_with(Autoload.get_nodes(self))

		if randi() % 2 == 1:
			Autoload.qq = str(get_collision_exceptions())
		if randi() % 2 == 1:
			Autoload.qq = str(get_collision_layer_bit(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_collision_mask_bit(Autoload.get_int()))

		if randi() % 2 == 1:
			Autoload.qq = str(is_ray_pickable())
		if randi() % 2 == 1:
			remove_collision_exception_with(get_parent())

		if randi() % 2 == 1:
			set_collision_layer_bit(Autoload.get_int(),Autoload.get_bool())
		if randi() % 2 == 1:
			set_collision_mask_bit(Autoload.get_int(),Autoload.get_bool())
		if randi() % 2 == 1:
			set_ray_pickable(Autoload.get_bool())
