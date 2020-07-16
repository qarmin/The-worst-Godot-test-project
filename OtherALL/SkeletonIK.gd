extends SkeletonIK3D

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_SkeletonIK3D: SkeletonIK3D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_SkeletonIK3D)
		AutoObjects.A_Node(q_SkeletonIK3D)

	if randi() % 2 == 1:
		q_SkeletonIK3D.set_root_bone(Autoload.get_string())
	if randi() % 2 == 1:
		q_SkeletonIK3D.set_tip_bone(Autoload.get_string())
	if randi() % 2 == 1:
		q_SkeletonIK3D.set_interpolation(Autoload.get_float())
	if randi() % 2 == 1:
		q_SkeletonIK3D.set_target_transform(Autoload.get_transform())
	if randi() % 2 == 1:
		q_SkeletonIK3D.set_override_tip_basis(Autoload.get_bool())
	if randi() % 2 == 1:
		q_SkeletonIK3D.set_use_magnet(Autoload.get_bool())
	if randi() % 2 == 1:
		q_SkeletonIK3D.set_magnet_position(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_SkeletonIK3D.set_target_node(Autoload.get_string())
	if randi() % 2 == 1:
		q_SkeletonIK3D.set_min_distance(Autoload.get_float())
	if randi() % 2 == 1:
		q_SkeletonIK3D.set_max_iterations(Autoload.get_int())

	if randi() % 2 == 1:
		q_SkeletonIK3D.get_parent_skeleton()
	if randi() % 2 == 1:
		q_SkeletonIK3D.is_running()
	if randi() % 2 == 1:
		q_SkeletonIK3D.start(Autoload.get_bool())
	if randi() % 2 == 1:
		q_SkeletonIK3D.stop()
