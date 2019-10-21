extends Navigation2D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Node2D(self)
		nodeFunction(self)

func nodeFunction(q_Navigation2D : Navigation2D, can_reset : bool = false) -> void:
		
		if randi() % 2 == 1:
			q_Navigation2D.get_closest_point(Autoload.get_vector2())
		if randi() % 2 == 1:
			q_Navigation2D.get_closest_point_owner(Autoload.get_vector2())

		if randi() % 2 == 1:
			q_Navigation2D.navpoly_remove(navpoly_add(NavigationPolygon.new(),Autoload.get_transform2d()))
		if randi() % 2 == 1:
			q_Navigation2D.navpoly_set_transform(Autoload.get_int(),Autoload.get_transform2d())
