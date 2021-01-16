extends Area3D

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_Area3D: Area3D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Area3D)
		AutoObjects.A_Node(q_Area3D)
		AutoObjects.A_Node3D(q_Area3D)
		AutoObjects.A_CollisionObject3D(q_Area3D)

	if randi() % 2 == 1:
		q_Area3D.set_space_override_mode(Autoload.get_int())  #SpaceOverride
	if randi() % 2 == 1:
		q_Area3D.set_gravity_is_point(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Area3D.set_gravity_distance_scale(Autoload.get_float())
	if randi() % 2 == 1:
		q_Area3D.set_gravity_vector(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Area3D.set_gravity(Autoload.get_float())
	if randi() % 2 == 1:
		q_Area3D.set_linear_damp(Autoload.get_float())
	if randi() % 2 == 1:
		q_Area3D.set_angular_damp(Autoload.get_float())
	if randi() % 2 == 1:
		q_Area3D.set_priority(Autoload.get_float())
	if randi() % 2 == 1:
		q_Area3D.set_monitoring(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Area3D.set_monitorable(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Area3D.set_collision_layer(Autoload.get_int())
	if randi() % 2 == 1:
		q_Area3D.set_collision_mask(Autoload.get_int())
	if randi() % 2 == 1:
		q_Area3D.set_audio_bus_override(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_Area3D.set_audio_bus(Autoload.get_string())
	if randi() % 2 == 1:
		q_Area3D.set_use_reverb_bus(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Area3D.set_reverb_bus(Autoload.get_string())
	if randi() % 2 == 1:
		q_Area3D.set_reverb_amount(Autoload.get_float())
	if randi() % 2 == 1:
		q_Area3D.set_reverb_uniformity(Autoload.get_float())

	if randi() % 2 == 1:
		q_Area3D.get_collision_layer_bit(Autoload.get_int())
	if randi() % 2 == 1:
		q_Area3D.get_collision_mask_bit(Autoload.get_int())
	if randi() % 2 == 1:
		q_Area3D.get_overlapping_areas()
	if randi() % 2 == 1:
		q_Area3D.get_overlapping_bodies()

	if randi() % 2 == 1:
		q_Area3D.overlaps_area(q_Area3D)
	if randi() % 2 == 1:
		q_Area3D.overlaps_body(q_Area3D)

	if randi() % 2 == 1:
		q_Area3D.set_collision_layer_bit(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_Area3D.set_collision_mask_bit(Autoload.get_int(), Autoload.get_int())
