extends CollisionPolygon2D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_CollisionPolygon2D : CollisionPolygon2D, can_reset : bool = false) -> void:

	AutoObjects.A_Object(self)
	AutoObjects.A_Node(self)
	AutoObjects.A_CanvasItem(self)
	AutoObjects.A_Node2D(self)
		
	if randi() % 2 == 1:
		q_CollisionPolygon2D.set_build_mode(Autoload.get_int()) # Enum BuildMode
	if randi() % 2 == 1:
		q_CollisionPolygon2D.set_polygon(Autoload.get_poolvector2array())
	if randi() % 2 == 1:
		q_CollisionPolygon2D.set_disabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CollisionPolygon2D.set_one_way_collision(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CollisionPolygon2D.set_one_way_collision_margin(Autoload.get_bool())
