extends CollisionShape3D

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_CollisionShape3D: CollisionShape3D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_CollisionShape3D)
		AutoObjects.A_Node(q_CollisionShape3D)
		AutoObjects.A_Node3D(q_CollisionShape3D)

	### START TEMP
	var temp_BoxShape3D: BoxShape3D = BoxShape3D.new()
#?#	AutoResourcesBoxShape.nodeFunction(temp_BoxShape3D)

	### END TEMP

	if randi() % 2 == 1:
		q_CollisionShape3D.set_shape(temp_BoxShape3D)
	if randi() % 2 == 1:
		q_CollisionShape3D.set_disabled(Autoload.get_bool())

#	if randi() % 2 == 1: #BUG GH#32988 because use Mesh
#		q_CollisionShape3D.make_convex_from_brothers()
	if randi() % 2 == 1:
		q_CollisionShape3D.resource_changed(temp_BoxShape3D)
