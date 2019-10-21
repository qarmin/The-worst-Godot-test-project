extends CollisionShape

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_Spatial(self)
		nodeFunction(self)

func nodeFunction(q_CollisionShape : CollisionShape, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		q_CollisionShape.set_shape(BoxShape.new())
	if randi() % 2 == 1:
		q_CollisionShape.set_disabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CollisionShape.make_convex_from_brothers()
	if randi() % 2 == 1:
		q_CollisionShape.resource_changed(BoxShape.new())
