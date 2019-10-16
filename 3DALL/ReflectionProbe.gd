extends ReflectionProbe

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_update_mode(Autoload.get_int()) #UpdateMode
		if randi() % 2 == 1:
			set_intensity(Autoload.get_float())
		if randi() % 2 == 1:
			set_max_distance(Autoload.get_float())
		if randi() % 2 == 1:
			set_extents(Autoload.get_vector3())
		if randi() % 2 == 1:
			set_origin_offset(Autoload.get_vector3())
		if randi() % 2 == 1:
			set_enable_box_projection(Autoload.get_bool())
		if randi() % 2 == 1:
			set_enable_shadows(Autoload.get_bool())
		if randi() % 2 == 1:
			set_cull_mask(Autoload.get_int())
		if randi() % 2 == 1:
			set_as_interior(Autoload.get_bool())
		if randi() % 2 == 1:
			set_interior_ambient(Autoload.get_color())
		if randi() % 2 == 1:
			set_interior_ambient_energy(Autoload.get_float())
		if randi() % 2 == 1:
			set_interior_ambient_probe_contribution(Autoload.get_float())
