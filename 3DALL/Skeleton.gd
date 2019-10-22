extends Skeleton

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_Skeleton : Skeleton, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Skeleton)
		AutoObjects.A_Node(q_Skeleton)
		AutoObjects.A_Spatial(q_Skeleton)
	
	if randi() % 2 == 1:
		for _i in range(10):
			q_Skeleton.add_bone(Autoload.get_string())
	if randi() % 2 == 1:
		q_Skeleton.bind_child_node_to_bone(Autoload.get_int(),Autoload.get_nodes(q_Skeleton))
	if randi() % 2 == 1:
		q_Skeleton.clear_bones()
	if randi() % 2 == 1:
		q_Skeleton.find_bone(Autoload.get_string())

	if randi() % 2 == 1:
		q_Skeleton.get_bone_count()
	if randi() % 2 == 1:
		q_Skeleton.get_bone_custom_pose(Autoload.get_int())
	if randi() % 2 == 1:
		q_Skeleton.get_bone_global_pose(Autoload.get_int())
	if randi() % 2 == 1:
		q_Skeleton.get_bone_name(Autoload.get_int())
	if randi() % 2 == 1:
		q_Skeleton.get_bone_parent(Autoload.get_int())
	if randi() % 2 == 1:
		q_Skeleton.get_bone_pose(Autoload.get_int())
	if randi() % 2 == 1:
		q_Skeleton.get_bone_rest(Autoload.get_int())
	if randi() % 2 == 1:
		q_Skeleton.get_bound_child_nodes_to_bone(Autoload.get_int())

	if randi() % 2 == 1:
		q_Skeleton.is_bone_rest_disabled(Autoload.get_int())
	if randi() % 2 == 1:
		q_Skeleton.localize_rests()

	if randi() % 2 == 1:
		q_Skeleton.physical_bones_add_collision_exception(RID())
	if randi() % 2 == 1:
		q_Skeleton.physical_bones_remove_collision_exception(RID())
	if randi() % 2 == 1:
		q_Skeleton.physical_bones_start_simulation()
	if randi() % 2 == 1:
		q_Skeleton.physical_bones_stop_simulation()
	if randi() % 2 == 1:
		q_Skeleton.set_bone_custom_pose(Autoload.get_int(),Autoload.get_transform())
	if randi() % 2 == 1:
		q_Skeleton.set_bone_disable_rest(Autoload.get_int(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_Skeleton.set_bone_parent(Autoload.get_int(),Autoload.get_int())
	if randi() % 2 == 1:
		q_Skeleton.set_bone_pose(Autoload.get_int(),Autoload.get_transform())
	if randi() % 2 == 1:
		q_Skeleton.set_bone_rest(Autoload.get_int(),Autoload.get_transform())

	if randi() % 2 == 1:
		q_Skeleton.unbind_child_node_from_bone(Autoload.get_int(),q_Skeleton)
#	LOOP BUG	if randi() % 2 == 1:
#			q_Skeleton.unparent_bone_and_rest(Autoload.get_int())

