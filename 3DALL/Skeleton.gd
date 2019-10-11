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
		
		if randi() % 2 == 1:
			
			for _i in range(10):
				add_bone(str(randi() % 2525))
		if randi() % 2 == 1:
			bind_child_node_to_bone(Autoload.get_randi(),self)
			#NA KONIEC clear_bones()
		if randi() % 2 == 1:
			qq += str(find_bone("asfqw"))
	
		if randi() % 2 == 1:
			qq += str(get_bone_count())
		if randi() % 2 == 1:
			qq += str(get_bone_custom_pose(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_bone_global_pose(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_bone_name(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_bone_parent(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_bone_pose(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_bone_rest(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_bound_child_nodes_to_bone(Autoload.get_randi()))
	
		if randi() % 2 == 1:
			qq += str(is_bone_rest_disabled(Autoload.get_randi()))
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
			set_bone_custom_pose(Autoload.get_randi(),Transform(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())))
		if randi() % 2 == 1:
			set_bone_disable_rest(Autoload.get_randi(),bool(randi()%2))
		if randi() % 2 == 1:
			set_bone_parent(Autoload.get_randi(),Autoload.get_randi())
		if randi() % 2 == 1:
			set_bone_pose(Autoload.get_randi(),Transform(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())))
		if randi() % 2 == 1:
			set_bone_rest(Autoload.get_randi(),Transform(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())))
	
		if randi() % 2 == 1:
			unbind_child_node_from_bone(Autoload.get_randi(),self)
#	LOOP BUG		if randi() % 2 == 1:
#				unparent_bone_and_rest(Autoload.get_randi())
	
		if randi() % 2 == 1:
			clear_bones() # ZE SRODKA
