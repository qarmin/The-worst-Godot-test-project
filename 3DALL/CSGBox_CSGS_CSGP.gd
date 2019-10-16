extends CSGBox

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_width(Autoload.get_float())
		if randi() % 2 == 1:
			set_height(Autoload.get_float())
		if randi() % 2 == 1:
			set_depth(Autoload.get_float())
		if randi() % 2 == 1:
			set_material(Autoload.loadA("SpatialMaterial.tres"))

			# CSGPrimivive
		if randi() % 2 == 1:
			set_invert_faces(Autoload.get_bool())

			# CSGShape
		if randi() % 2 == 1:
			set_operation(Autoload.get_int()) # OPERATION
		if randi() % 2 == 1:
			set_snap(Autoload.get_float())
		if randi() % 2 == 1:
			set_calculate_tangents(Autoload.get_bool())
		if randi() % 2 == 1:
			set_use_collision(Autoload.get_bool())
		if randi() % 2 == 1:
			set_collision_layer(Autoload.get_int())
		if randi() % 2 == 1:
			set_collision_mask(Autoload.get_int())

		if randi() % 2 == 1:
			Autoload.qq = str(get_collision_layer_bit(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_collision_mask_bit(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_meshes())

		if randi() % 2 == 1:
			Autoload.qq = str(is_root_shape())

		if randi() % 2 == 1:
			set_collision_layer_bit(Autoload.get_int(),Autoload.get_bool())
		if randi() % 2 == 1:
			set_collision_mask_bit(Autoload.get_int(),Autoload.get_bool())
