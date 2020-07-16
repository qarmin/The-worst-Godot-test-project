extends Area2D

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_Area2D: Area2D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Area2D)
		AutoObjects.A_Node(q_Area2D)
		AutoObjects.A_CanvasItem(q_Area2D)
		AutoObjects.A_Node2D(q_Area2D)
		AutoObjects.A_CollisionObject2D(q_Area2D)

	if randi() % 2 == 1:
		q_Area2D.set_space_override_mode(Autoload.get_int())
	if randi() % 2 == 1:
		q_Area2D.set_gravity_is_point(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Area2D.set_gravity_distance_scale(Autoload.get_float())
	if randi() % 2 == 1:
		q_Area2D.set_gravity_vector(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Area2D.set_gravity(Autoload.get_float())
	if randi() % 2 == 1:
		q_Area2D.set_linear_damp(Autoload.get_float())
	if randi() % 2 == 1:
		q_Area2D.set_angular_damp(Autoload.get_float())
	if randi() % 2 == 1:
		q_Area2D.set_priority(Autoload.get_float())
	if randi() % 2 == 1:
		q_Area2D.set_monitoring(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Area2D.set_monitorable(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Area2D.set_collision_layer(Autoload.get_int())
	if randi() % 2 == 1:
		q_Area2D.set_collision_mask(Autoload.get_int())
	if randi() % 2 == 1:
		q_Area2D.set_audio_bus_override(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Area2D.set_audio_bus_name(Autoload.get_string())

	if randi() % 2 == 1:
		q_Area2D.get_collision_layer_bit(Autoload.get_int())
	if randi() % 2 == 1:
		q_Area2D.get_collision_mask_bit(Autoload.get_int())
	if randi() % 2 == 1:
		q_Area2D.get_overlapping_areas()
	if randi() % 2 == 1:
		q_Area2D.get_overlapping_bodies()

	if randi() % 2 == 1:
		q_Area2D.overlaps_area(Autoload.get_nodes(q_Area2D))
	if randi() % 2 == 1:
		q_Area2D.overlaps_body(Autoload.get_nodes(q_Area2D))

	if randi() % 2 == 1:
		q_Area2D.set_collision_layer_bit(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_Area2D.set_collision_mask_bit(Autoload.get_int(), Autoload.get_int())
