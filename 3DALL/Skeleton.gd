extends Skeleton

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:

			for _i in range(10):
				add_bone(Autoload.get_string())
		if randi() % 2 == 1:
			bind_child_node_to_bone(Autoload.get_int(),Autoload.get_nodes(self))
			#NA KONIEC clear_bones()
		if randi() % 2 == 1:
			Autoload.qq = str(find_bone(Autoload.get_string()))

		if randi() % 2 == 1:
			Autoload.qq = str(get_bone_count())
		if randi() % 2 == 1:
			Autoload.qq = str(get_bone_custom_pose(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_bone_global_pose(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_bone_name(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_bone_parent(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_bone_pose(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_bone_rest(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_bound_child_nodes_to_bone(Autoload.get_int()))

		if randi() % 2 == 1:
			Autoload.qq = str(is_bone_rest_disabled(Autoload.get_int()))
		if randi() % 2 == 1:
			localize_rests()

		if randi() % 2 == 1:
			physical_bones_add_collision_exception(RID())
		if randi() % 2 == 1:
			physical_bones_remove_collision_exception(RID())
		if randi() % 2 == 1:
			physical_bones_start_simulation()
		if randi() % 2 == 1:
			physical_bones_stop_simulation()
		if randi() % 2 == 1:
			set_bone_custom_pose(Autoload.get_int(),Autoload.get_transform())
		if randi() % 2 == 1:
			set_bone_disable_rest(Autoload.get_int(),Autoload.get_bool())
		if randi() % 2 == 1:
			set_bone_parent(Autoload.get_int(),Autoload.get_int())
		if randi() % 2 == 1:
			set_bone_pose(Autoload.get_int(),Autoload.get_transform())
		if randi() % 2 == 1:
			set_bone_rest(Autoload.get_int(),Autoload.get_transform())

		if randi() % 2 == 1:
			unbind_child_node_from_bone(Autoload.get_int(),self)
#	LOOP BUG		if randi() % 2 == 1:
#				unparent_bone_and_rest(Autoload.get_int())

		if randi() % 2 == 1:
			clear_bones() # ZE SRODKA
