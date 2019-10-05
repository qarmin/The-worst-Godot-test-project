extends Skeleton

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
#		set_use_bones_in_world_transform(bool(randi()%2))
#
#		for _i in range(10):
#			add_bone(str(randi() % 2525))
#		bind_child_node_to_bone(0,self)
		#NA KONIEC clear_bones()
#		qq += str(find_bone("asfqw"))
#
#		qq += str(get_bone_count())
#		qq += str(get_bone_custom_pose(0))
#		qq += str(get_bone_global_pose(0))
#		qq += str(get_bone_name(0))
#		qq += str(get_bone_parent(0))
#		qq += str(get_bone_pose(0))
#		qq += str(get_bone_rest(0))
#		qq += str(get_bone_transform(0))
#		qq += str(get_bound_child_nodes_to_bone(0))
#
#		qq += str(is_bone_rest_disabled(0))
##		localize_rests()
#
#		#physical_bones_add_collision_exception(RID())
#		#physical_bones_remove_collision_exception(RID())
#		#physical_bones_start_simulation()
#		physical_bones_stop_simulation()
#		set_bone_custom_pose(0,Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
#		set_bone_disable_rest(0,bool(randi()%2))
#		set_bone_global_pose(0,Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
#		set_bone_ignore_animation(0,bool(randi()%2))
#		set_bone_parent(0,1)
#		set_bone_pose(0,Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
#		set_bone_rest(0,Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
#
##		unbind_child_node_from_bone(0,self)
##		unparent_bone_and_rest(0)
#
#		clear_bones() # ZE SRODKA

		if Autoload.WRONG_BUGS:
			#set_use_bones_in_world_transform(bool(randi()%2))
			
			for _i in range(10):
				add_bone(str(randi() % 2525))
			bind_child_node_to_bone(randi() % 1000 - 500,self)
			#NA KONIEC clear_bones()
			qq += str(find_bone("asfqw"))
	
			qq += str(get_bone_count())
			qq += str(get_bone_custom_pose(randi() % 1000 - 500))
			qq += str(get_bone_global_pose(randi() % 1000 - 500))
			qq += str(get_bone_name(randi() % 1000 - 500))
			qq += str(get_bone_parent(randi() % 1000 - 500))
			qq += str(get_bone_pose(randi() % 1000 - 500))
			qq += str(get_bone_rest(randi() % 1000 - 500))
			#qq += str(get_bone_transform(randi() % 1000 - 500))
			qq += str(get_bound_child_nodes_to_bone(randi() % 1000 - 500))
	
			qq += str(is_bone_rest_disabled(randi() % 1000 - 500))
			localize_rests()
	
			physical_bones_add_collision_exception(RID())
			physical_bones_remove_collision_exception(RID())
			physical_bones_start_simulation()
			physical_bones_stop_simulation()
			set_bone_custom_pose(randi() % 1000 - 500,Transform(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
			set_bone_disable_rest(randi() % 1000 - 500,bool(randi()%2))
			#set_bone_global_pose(randi() % 1000 - 500,Transform(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
			#set_bone_ignore_animation(randi() % 1000 - 500,bool(randi()%2))
			set_bone_parent(randi() % 1000 - 500,randi() % 1000 - 500)
			set_bone_pose(randi() % 1000 - 500,Transform(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
			set_bone_rest(randi() % 1000 - 500,Transform(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
	
			unbind_child_node_from_bone(randi() % 1000 - 500,self)
			unparent_bone_and_rest(randi() % 1000 - 500)
	
			clear_bones() # ZE SRODKA

	else: #RANDI
		if randi() % 2 == 1:
			
			for _i in range(10):
				add_bone(str(randi() % 2525))
		if randi() % 2 == 1:
			bind_child_node_to_bone(randi() % 1000 - 500,self)
			#NA KONIEC clear_bones()
		if randi() % 2 == 1:
			qq += str(find_bone("asfqw"))
	
		if randi() % 2 == 1:
			qq += str(get_bone_count())
		if randi() % 2 == 1:
			qq += str(get_bone_custom_pose(randi() % 1000 - 500))
		if randi() % 2 == 1:
			qq += str(get_bone_global_pose(randi() % 1000 - 500))
		if randi() % 2 == 1:
			qq += str(get_bone_name(randi() % 1000 - 500))
		if randi() % 2 == 1:
			qq += str(get_bone_parent(randi() % 1000 - 500))
		if randi() % 2 == 1:
			qq += str(get_bone_pose(randi() % 1000 - 500))
		if randi() % 2 == 1:
			qq += str(get_bone_rest(randi() % 1000 - 500))
		if randi() % 2 == 1:
			qq += str(get_bound_child_nodes_to_bone(randi() % 1000 - 500))
	
		if randi() % 2 == 1:
			qq += str(is_bone_rest_disabled(randi() % 1000 - 500))
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
			set_bone_custom_pose(randi() % 1000 - 500,Transform(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
		if randi() % 2 == 1:
			set_bone_disable_rest(randi() % 1000 - 500,bool(randi()%2))
		if randi() % 2 == 1:
			set_bone_parent(randi() % 1000 - 500,randi() % 1000 - 500)
		if randi() % 2 == 1:
			set_bone_pose(randi() % 1000 - 500,Transform(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
		if randi() % 2 == 1:
			set_bone_rest(randi() % 1000 - 500,Transform(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
	
		if randi() % 2 == 1:
			unbind_child_node_from_bone(randi() % 1000 - 500,self)
		if randi() % 2 == 1:
			unparent_bone_and_rest(randi() % 1000 - 500)
	
		if randi() % 2 == 1:
			clear_bones() # ZE SRODKA
