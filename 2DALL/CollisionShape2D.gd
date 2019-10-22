extends CollisionShape2D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_CollisionShape2D : CollisionShape2D, can_reset : bool = false) -> void:
	
	if randi()%2 == 1:
		AutoObjects.A_Object(q_CollisionShape2D)
		AutoObjects.A_Node(q_CollisionShape2D)
		AutoObjects.A_CanvasItem(q_CollisionShape2D)
		AutoObjects.A_Node2D(q_CollisionShape2D)
		
	if randi() % 2 == 1:
		q_CollisionShape2D.set_shape(Autoload.loadA("CircleShape2D.tres"))
	if randi() % 2 == 1:
		q_CollisionShape2D.set_disabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CollisionShape2D.set_one_way_collision(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CollisionShape2D.set_one_way_collision_margin(Autoload.get_bool())
