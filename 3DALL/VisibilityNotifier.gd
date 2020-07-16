extends VisibilityNotifier3D

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_VisibilityNotifier3D: VisibilityNotifier3D, can_reset: bool = false) -> void:
	pass
#	if randi() % 2 == 1:
#		AutoObjects.A_Object(q_VisibilityNotifier3D)
#		AutoObjects.A_Node(q_VisibilityNotifier3D)
#		AutoObjects.A_Node3D(q_VisibilityNotifier3D)
#
#	if randi() % 2 == 1:
#		q_VisibilityNotifier3D.set_aabb(Autoload.get_aabb())
#	if randi() % 2 == 1:
#		q_VisibilityNotifier3D.is_on_screen()
