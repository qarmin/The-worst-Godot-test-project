extends InterpolatedCamera

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

func nodeFunction(q_InterpolatedCamera : InterpolatedCamera) -> void:

		if randi() % 2 == 1:
			q_InterpolatedCamera.set_target_path(Autoload.get_string())
		if randi() % 2 == 1:
			q_InterpolatedCamera.set_speed(Autoload.get_float())
		if randi() % 2 == 1:
			q_InterpolatedCamera.set_interpolation_enabled(Autoload.get_bool())
		if randi() % 2 == 1:
			q_InterpolatedCamera.set_target(Autoload.get_nodes(self))
