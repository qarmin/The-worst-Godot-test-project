extends CollisionShape2D

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Node2D(self)
		nodeFunction(self)

func nodeFunction(q_CollisionShape2D : CollisionShape2D) -> void:

	if randi() % 2 == 1:
		q_CollisionShape2D.set_shape(Autoload.loadA("CircleShape2D.tres"))
	if randi() % 2 == 1:
		q_CollisionShape2D.set_disabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CollisionShape2D.set_one_way_collision(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CollisionShape2D.set_one_way_collision_margin(Autoload.get_bool())
