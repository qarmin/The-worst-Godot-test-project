extends SkeletonIK

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_SkeletonIK : SkeletonIK) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_SkeletonIK)
		AutoObjects.A_Node(q_SkeletonIK)
	
	if randi() % 2 == 1:
		q_SkeletonIK.set_root_bone(Autoload.get_string())
	if randi() % 2 == 1:
		q_SkeletonIK.set_tip_bone(Autoload.get_string())
	if randi() % 2 == 1:
		q_SkeletonIK.set_interpolation(Autoload.get_float())
	if randi() % 2 == 1:
		q_SkeletonIK.set_target_transform(Autoload.get_transform())
	if randi() % 2 == 1:
		q_SkeletonIK.set_override_tip_basis(Autoload.get_bool())
	if randi() % 2 == 1:
		q_SkeletonIK.set_use_magnet(Autoload.get_bool())
	if randi() % 2 == 1:
		q_SkeletonIK.set_magnet_position(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_SkeletonIK.set_target_node(Autoload.get_string())
	if randi() % 2 == 1:
		q_SkeletonIK.set_min_distance(Autoload.get_float())
	if randi() % 2 == 1:
		q_SkeletonIK.set_max_iterations(Autoload.get_int())

	if randi() % 2 == 1:
		q_SkeletonIK.get_parent_skeleton()
	if randi() % 2 == 1:
		q_SkeletonIK.is_running()
	if randi() % 2 == 1:
		q_SkeletonIK.start(Autoload.get_bool())
	if randi() % 2 == 1:
		q_SkeletonIK.stop()
