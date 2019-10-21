extends Area

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_Spatial(self)
		AutoObjects.A_CollisionObject(self)
		nodeFunction(self)

func nodeFunction(q_Area : Area, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		q_Area.set_space_override_mode(Autoload.get_int())
	if randi() % 2 == 1:
		q_Area.set_gravity_is_point(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Area.set_gravity_distance_scale(Autoload.get_float())
	if randi() % 2 == 1:
		q_Area.set_gravity_vector(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Area.set_gravity(Autoload.get_float())
	if randi() % 2 == 1:
		q_Area.set_linear_damp(Autoload.get_float()) 
	if randi() % 2 == 1:
		q_Area.set_angular_damp(Autoload.get_float())
	if randi() % 2 == 1:
		q_Area.set_priority(Autoload.get_float()) 
	if randi() % 2 == 1:
		q_Area.set_monitoring(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Area.set_monitorable(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Area.set_collision_layer(Autoload.get_int())
	if randi() % 2 == 1:
		q_Area.set_collision_mask(Autoload.get_int())
	if randi() % 2 == 1:
		q_Area.set_audio_bus_override(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Area.set_audio_bus(Autoload.get_string())
	if randi() % 2 == 1:
		q_Area.set_use_reverb_bus(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Area.set_reverb_bus(Autoload.get_string())
	if randi() % 2 == 1:
		q_Area.set_reverb_amount(Autoload.get_float()) 
	if randi() % 2 == 1:
		q_Area.set_reverb_uniformity(Autoload.get_float()) 

	if randi() % 2 == 1:
		q_Area.get_collision_layer_bit(Autoload.get_int())
	if randi() % 2 == 1:
		q_Area.get_collision_mask_bit(Autoload.get_int())

	if randi() % 2 == 1:
		q_Area.get_overlapping_areas()
	if randi() % 2 == 1:
		q_Area.get_overlapping_bodies()

	if randi() % 2 == 1:
		q_Area.overlaps_area(q_Area)
	if randi() % 2 == 1:
		q_Area.overlaps_body(q_Area)

	if randi() % 2 == 1:
		q_Area.set_collision_layer_bit(Autoload.get_int(),Autoload.get_int())
	if randi() % 2 == 1:
		q_Area.set_collision_mask_bit(Autoload.get_int(),Autoload.get_int())
