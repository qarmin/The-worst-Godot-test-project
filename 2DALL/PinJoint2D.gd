extends PinJoint2D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_PinJoint2D : PinJoint2D, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_PinJoint2D)
		AutoObjects.A_Node(q_PinJoint2D)
		AutoObjects.A_CanvasItem(q_PinJoint2D)
		AutoObjects.A_Node2D(q_PinJoint2D)
		AutoObjects.A_Joint2D(q_PinJoint2D)
		
	if randi() % 2 == 1:
		q_PinJoint2D.set_softness(Autoload.get_float())
	if randi() % 2 == 1:
		q_PinJoint2D.set_bias(Autoload.get_float())
	if randi() % 2 == 1:
		q_PinJoint2D.set_exclude_nodes_from_collision(Autoload.get_bool())
