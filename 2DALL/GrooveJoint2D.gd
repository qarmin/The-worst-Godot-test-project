extends GrooveJoint2D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_GrooveJoint2D : GrooveJoint2D, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_GrooveJoint2D)
		AutoObjects.A_Node(q_GrooveJoint2D)
		AutoObjects.A_CanvasItem(q_GrooveJoint2D)
		AutoObjects.A_Node2D(q_GrooveJoint2D)
		AutoObjects.A_Joint2D(q_GrooveJoint2D)
		
	if randi() % 2 == 1:
		q_GrooveJoint2D.set_length(Autoload.get_float())
	if randi() % 2 == 1:
		q_GrooveJoint2D.set_initial_offset(Autoload.get_float())
	if randi() % 2 == 1:
		q_GrooveJoint2D.set_bias(Autoload.get_float())
	if randi() % 2 == 1:
		q_GrooveJoint2D.set_exclude_nodes_from_collision(Autoload.get_bool())
