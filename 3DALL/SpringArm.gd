extends SpringArm3D

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_SpringArm3D: SpringArm3D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_SpringArm3D)
		AutoObjects.A_Node(q_SpringArm3D)
		AutoObjects.A_Node3D(q_SpringArm3D)

	### START TEMP
	var temp_BoxShape3D: BoxShape3D = BoxShape3D.new()
#?#	AutoResourcesBoxShape.nodeFunction(temp_BoxShape3D)

	### END TEMP

	if randi() % 2 == 1:
		q_SpringArm3D.set_collision_mask(Autoload.get_int())
	if randi() % 2 == 1:
		q_SpringArm3D.set_shape(temp_BoxShape3D)
	if randi() % 2 == 1:
		q_SpringArm3D.set_length(Autoload.get_float())
	if randi() % 2 == 1:
		q_SpringArm3D.set_margin(Autoload.get_float())

	if randi() % 2 == 1:
		q_SpringArm3D.add_excluded_object(RID())
	if randi() % 2 == 1:
		q_SpringArm3D.clear_excluded_objects()
	if randi() % 2 == 1:
		q_SpringArm3D.get_hit_length()
	if randi() % 2 == 1:
		q_SpringArm3D.remove_excluded_object(RID())
