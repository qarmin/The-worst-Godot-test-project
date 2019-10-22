extends VisibilityNotifier

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_VisibilityNotifier : VisibilityNotifier, can_reset : bool = false) -> void:
	pass
#	if randi() % 2 == 1:
#		AutoObjects.A_Object(q_VisibilityNotifier)
#		AutoObjects.A_Node(q_VisibilityNotifier)
#		AutoObjects.A_Spatial(q_VisibilityNotifier)
#
#	if randi() % 2 == 1:
#		q_VisibilityNotifier.set_aabb(Autoload.get_aabb())
#	if randi() % 2 == 1:
#		q_VisibilityNotifier.is_on_screen()
