extends PinJoint2D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Node2D(self)
		AutoObjects.A_Joint2D(self)
		nodeFunction(self)

func nodeFunction(q_PinJoint2D : PinJoint2D, can_reset : bool = false) -> void:

		if randi() % 2 == 1:
			q_PinJoint2D.set_softness(Autoload.get_float())
		if randi() % 2 == 1:
			q_PinJoint2D.set_bias(Autoload.get_float())
		if randi() % 2 == 1:
			q_PinJoint2D.set_exclude_nodes_from_collision(Autoload.get_bool())
