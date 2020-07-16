extends XROrigin3D

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_XROrigin3D: XROrigin3D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_XROrigin3D)
		AutoObjects.A_Node(q_XROrigin3D)
		AutoObjects.A_Node3D(q_XROrigin3D)

#	if can_reset:
#		if randi() % 2 == 1:
#			q_XROrigin3D = XROrigin3D.new()

	if randi() % 2 == 1:
		q_XROrigin3D.set_world_scale(Autoload.get_float())
