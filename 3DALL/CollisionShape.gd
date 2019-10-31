extends CollisionShape

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_CollisionShape : CollisionShape, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_CollisionShape)
		AutoObjects.A_Node(q_CollisionShape)
		AutoObjects.A_Spatial(q_CollisionShape)
		
	### START TEMP
	var temp_BoxShape : BoxShape = BoxShape.new()
#?#	AutoResourcesBoxShape.nodeFunction(temp_BoxShape)
	
	### END TEMP
	
		
	if randi() % 2 == 1:
		q_CollisionShape.set_shape(temp_BoxShape)
	if randi() % 2 == 1:
		q_CollisionShape.set_disabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CollisionShape.make_convex_from_brothers()
	if randi() % 2 == 1:
		q_CollisionShape.resource_changed(temp_BoxShape)
