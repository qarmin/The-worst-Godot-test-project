extends SpringArm

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_SpringArm : SpringArm, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_SpringArm)
		AutoObjects.A_Node(q_SpringArm)
		AutoObjects.A_Spatial(q_SpringArm)
		
	### START TEMP
	var temp_BoxShape : BoxShape = BoxShape.new()
	AutoResourcesBoxShape.nodeFunction(temp_BoxShape)
	
	### END TEMP
	
		
	if randi() % 2 == 1:
		q_SpringArm.set_collision_mask(Autoload.get_int())
	if randi() % 2 == 1:
		q_SpringArm.set_shape(temp_BoxShape)
	if randi() % 2 == 1:
		q_SpringArm.set_length(Autoload.get_float())
	if randi() % 2 == 1:
		q_SpringArm.set_margin(Autoload.get_float())

	if randi() % 2 == 1:
		q_SpringArm.add_excluded_object(RID())
	if randi() % 2 == 1:
		q_SpringArm.clear_excluded_objects()
	if randi() % 2 == 1:
		q_SpringArm.get_hit_length()
	if randi() % 2 == 1:
		q_SpringArm.remove_excluded_object(RID())
