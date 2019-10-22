extends InterpolatedCamera

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_InterpolatedCamera : InterpolatedCamera, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_InterpolatedCamera)
		AutoObjects.A_Node(q_InterpolatedCamera)
		AutoObjects.A_Spatial(q_InterpolatedCamera)
	
	if randi() % 2 == 1:
		q_InterpolatedCamera.set_target_path(Autoload.get_string())
	if randi() % 2 == 1:
		q_InterpolatedCamera.set_speed(Autoload.get_float())
	if randi() % 2 == 1:
		q_InterpolatedCamera.set_interpolation_enabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_InterpolatedCamera.set_target(Autoload.get_nodes(q_InterpolatedCamera))
