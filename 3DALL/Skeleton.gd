extends Skeleton3D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_Skeleton3D : Skeleton3D, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Skeleton3D)
		AutoObjects.A_Node(q_Skeleton3D)
		AutoObjects.A_Node3D(q_Skeleton3D)
	
	### START TEMP
	var temp_Skin : Skin = Skin.new()
#?#	AutoResourcesSkin.nodeFunction(temp_Skin)
	
	### END TEMP
	if randi() % 2 == 1:
		q_Skeleton3D.add_bone(Autoload.get_string())
	if randi() % 2 == 1:
		q_Skeleton3D.bind_child_node_to_bone(Autoload.get_int(),Autoload.get_nodes(q_Skeleton3D))
	if randi() % 2 == 1:
		q_Skeleton3D.clear_bones()
	if randi() % 2 == 1:
		q_Skeleton3D.find_bone(Autoload.get_string())

	if randi() % 2 == 1:
		q_Skeleton3D.get_bone_count()
	if randi() % 2 == 1:
		q_Skeleton3D.get_bone_custom_pose(Autoload.get_int())
	if randi() % 2 == 1:
		q_Skeleton3D.get_bone_global_pose(Autoload.get_int())
	if randi() % 2 == 1:
		q_Skeleton3D.get_bone_name(Autoload.get_int())
	if randi() % 2 == 1:
		q_Skeleton3D.get_bone_parent(Autoload.get_int())
	if randi() % 2 == 1:
		q_Skeleton3D.get_bone_pose(Autoload.get_int())
	if randi() % 2 == 1:
		q_Skeleton3D.get_bone_rest(Autoload.get_int())
	if randi() % 2 == 1:
		q_Skeleton3D.get_bound_child_nodes_to_bone(Autoload.get_int())

	if randi() % 2 == 1:
		q_Skeleton3D.is_bone_rest_disabled(Autoload.get_int())
	if randi() % 2 == 1:
		q_Skeleton3D.localize_rests()

	if randi() % 2 == 1:
		q_Skeleton3D.physical_bones_add_collision_exception(RID())
	if randi() % 2 == 1:
		q_Skeleton3D.physical_bones_remove_collision_exception(RID())
	if randi() % 2 == 1:
		q_Skeleton3D.physical_bones_start_simulation()
	if randi() % 2 == 1:
		q_Skeleton3D.physical_bones_stop_simulation()

	if randi() % 2 == 1:
		q_Skeleton3D.register_skin(temp_Skin)

	if randi() % 2 == 1:
		q_Skeleton3D.set_bone_custom_pose(Autoload.get_int(),Autoload.get_transform())
	if randi() % 2 == 1:
		q_Skeleton3D.set_bone_disable_rest(Autoload.get_int(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_Skeleton3D.set_bone_global_pose_override(Autoload.get_int(),Autoload.get_transform(),Autoload.get_float(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_Skeleton3D.set_bone_parent(Autoload.get_int(),Autoload.get_int())
	if randi() % 2 == 1:
		q_Skeleton3D.set_bone_pose(Autoload.get_int(),Autoload.get_transform())
	if randi() % 2 == 1:
		q_Skeleton3D.set_bone_rest(Autoload.get_int(),Autoload.get_transform())

	if randi() % 2 == 1:
		q_Skeleton3D.unbind_child_node_from_bone(Autoload.get_int(),q_Skeleton3D)
#	LOOP BUG	if randi() % 2 == 1:
#			q_Skeleton3D.unparent_bone_and_rest(Autoload.get_int())

