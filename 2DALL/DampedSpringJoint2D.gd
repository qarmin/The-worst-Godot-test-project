extends DampedSpringJoint2D

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

func nodeFunction(q_DampedSpringJoint2D : DampedSpringJoint2D) -> void:

	if randi() % 2 == 1:
		q_DampedSpringJoint2D.set_length(Autoload.get_float())
	if randi() % 2 == 1:
		q_DampedSpringJoint2D.set_rest_length(Autoload.get_float())
	if randi() % 2 == 1:
		q_DampedSpringJoint2D.set_stiffness(Autoload.get_float())
	if randi() % 2 == 1:
		q_DampedSpringJoint2D.set_damping(Autoload.get_float())
	if randi() % 2 == 1:
		q_DampedSpringJoint2D.set_exclude_nodes_from_collision(Autoload.get_bool())
