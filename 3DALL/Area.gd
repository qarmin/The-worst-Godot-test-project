extends Area

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_space_override_mode(Autoload.get_int())
		if randi() % 2 == 1:
			set_gravity_is_point(Autoload.get_bool())
		if randi() % 2 == 1:
			set_gravity_distance_scale(Autoload.get_float())
		if randi() % 2 == 1:
			set_gravity_vector(Autoload.get_vector3())
		if randi() % 2 == 1:
			set_gravity(Autoload.get_float())
		if randi() % 2 == 1:
			set_linear_damp(Autoload.get_float()) 
		if randi() % 2 == 1:
			set_angular_damp(Autoload.get_float())
		if randi() % 2 == 1:
			set_priority(Autoload.get_float()) 
		if randi() % 2 == 1:
			set_monitoring(Autoload.get_bool())
		if randi() % 2 == 1:
			set_monitorable(Autoload.get_bool())
		if randi() % 2 == 1:
			set_collision_layer(Autoload.get_int())
		if randi() % 2 == 1:
			set_collision_mask(Autoload.get_int())
		if randi() % 2 == 1:
			set_audio_bus_override(Autoload.get_bool())
		if randi() % 2 == 1:
			set_audio_bus(Autoload.get_string())
		if randi() % 2 == 1:
			set_use_reverb_bus(Autoload.get_bool())
		if randi() % 2 == 1:
			set_reverb_bus(Autoload.get_string())
		if randi() % 2 == 1:
			set_reverb_amount(Autoload.get_float()) 
		if randi() % 2 == 1:
			set_reverb_uniformity(Autoload.get_float()) 

		if randi() % 2 == 1:
			Autoload.qq = str(get_collision_layer_bit(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_collision_mask_bit(Autoload.get_int()))

		if randi() % 2 == 1:
			Autoload.qq = str(get_overlapping_areas())
		if randi() % 2 == 1:
			Autoload.qq = str(get_overlapping_bodies())

		if randi() % 2 == 1:
			Autoload.qq = str(overlaps_area(self))
		if randi() % 2 == 1:
			Autoload.qq = str(overlaps_body(self))

		if randi() % 2 == 1:
			set_collision_layer_bit(Autoload.get_int(),Autoload.get_int())
		if randi() % 2 == 1:
			set_collision_mask_bit(Autoload.get_int(),Autoload.get_int())
