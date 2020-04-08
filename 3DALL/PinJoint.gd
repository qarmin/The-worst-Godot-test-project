extends PinJoint3D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_PinJoint3D : PinJoint3D, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_PinJoint3D)
		AutoObjects.A_Node(q_PinJoint3D)
		AutoObjects.A_Node3D(q_PinJoint3D)
		AutoObjects.A_Joint3D(q_PinJoint3D)

	if randi() % 2 == 1:
		set("params/bias",Autoload.get_float())
	if randi() % 2 == 1:
		set("params/damping",Autoload.get_float())
	if randi() % 2 == 1:
		set("params/impulse_clamp",Autoload.get_float())
