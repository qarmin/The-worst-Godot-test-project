extends SoftBody3D

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_SoftBody3D: SoftBody3D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		Auto3DMeshInstance.nodeFunction(q_SoftBody3D)

	if randi() % 2 == 1:
		q_SoftBody3D.set_collision_layer(Autoload.get_int())
	if randi() % 2 == 1:
		q_SoftBody3D.set_collision_mask(Autoload.get_int())
	if randi() % 2 == 1:
		q_SoftBody3D.set_parent_collision_ignore(Autoload.get_string())
	if randi() % 2 == 1:
		q_SoftBody3D.set_simulation_precision(Autoload.get_int())
	if randi() % 2 == 1:
		q_SoftBody3D.set_total_mass(Autoload.get_float())
	if randi() % 2 == 1:
		q_SoftBody3D.set_linear_stiffness(Autoload.get_float())
	if randi() % 2 == 1:
		q_SoftBody3D.set_areaAngular_stiffness(Autoload.get_float())
	if randi() % 2 == 1:
		q_SoftBody3D.set_volume_stiffness(Autoload.get_float())
	if randi() % 2 == 1:
		q_SoftBody3D.set_pressure_coefficient(Autoload.get_float())
	if randi() % 2 == 1:
		q_SoftBody3D.set_damping_coefficient(Autoload.get_float())
	if randi() % 2 == 1:
		q_SoftBody3D.set_drag_coefficient(Autoload.get_float())
	if randi() % 2 == 1:
		q_SoftBody3D.set_pose_matching_coefficient(Autoload.get_float())

	if randi() % 2 == 1:
		q_SoftBody3D.add_collision_exception_with(Autoload.get_nodes(q_SoftBody3D))

	if randi() % 2 == 1:
		q_SoftBody3D.get_collision_exceptions()
	if randi() % 2 == 1:
		q_SoftBody3D.get_collision_layer_bit(Autoload.get_int())
	if randi() % 2 == 1:
		q_SoftBody3D.get_collision_mask_bit(Autoload.get_int())

	if randi() % 2 == 1:
		q_SoftBody3D.is_ray_pickable()
	if randi() % 2 == 1:
		q_SoftBody3D.remove_collision_exception_with(get_parent())

	if randi() % 2 == 1:
		q_SoftBody3D.set_collision_layer_bit(Autoload.get_int(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_SoftBody3D.set_collision_mask_bit(Autoload.get_int(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_SoftBody3D.set_ray_pickable(Autoload.get_bool())
