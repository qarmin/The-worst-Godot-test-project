extends VisibilityEnabler2D

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_VisibilityEnabler2D: VisibilityEnabler2D, can_reset: bool = false) -> void:
	pass
## TOO BIG MEMORY USAGE, TODO CHECK THIS LATER
#	if randi() % 2 == 1:
#		AutoObjects.A_Object(q_VisibilityEnabler2D)
#		AutoObjects.A_Node(q_VisibilityEnabler2D)
#		AutoObjects.A_CanvasItem(q_VisibilityEnabler2D)
#		AutoObjects.A_Node2D(q_VisibilityEnabler2D)
##?#		Auto2DVisibilityNotifier2D.nodeFunction(q_VisibilityEnabler2D)
#
#	if randi() % 2 == 1:
#		q_VisibilityEnabler2D.set_enabler(Autoload.get_int(),Autoload.get_bool())# Enabler
