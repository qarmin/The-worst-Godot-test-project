extends ARVRCamera

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_Spatial(self)
		Auto3DCamera.nodeFunction(self)
		nodeFunction(self)

func nodeFunction(q_ARVRCamera : ARVRCamera) -> void:
	pass
