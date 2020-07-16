extends CollisionPolygon3D

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_CollisionPolygon3D: CollisionPolygon3D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_CollisionPolygon3D)
		AutoObjects.A_Node(q_CollisionPolygon3D)
		AutoObjects.A_Node3D(q_CollisionPolygon3D)

	if randi() % 2 == 1:
		q_CollisionPolygon3D.set_depth(Autoload.get_float())
	if randi() % 2 == 1:
		q_CollisionPolygon3D.set_disabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CollisionPolygon3D.set_polygon(Autoload.get_packedvector2array())
