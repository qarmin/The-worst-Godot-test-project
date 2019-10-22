extends CollisionPolygon

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_CollisionPolygon : CollisionPolygon, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_CollisionPolygon)
		AutoObjects.A_Node(q_CollisionPolygon)
		AutoObjects.A_Spatial(q_CollisionPolygon)
		
	if randi() % 2 == 1:
		q_CollisionPolygon.set_depth(Autoload.get_float())
	if randi() % 2 == 1:
		q_CollisionPolygon.set_disabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CollisionPolygon.set_polygon(Autoload.get_poolvector2array())
