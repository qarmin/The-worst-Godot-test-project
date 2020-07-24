extends XRCamera3D

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_XRCamera3D: XRCamera3D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		Auto3DCamera.nodeFunction(q_XRCamera3D)

	if can_reset:
		if randi() % 2 == 1:
			q_XRCamera3D = XRCamera3D.new()
