extends VisibilityEnabler

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_VisibilityEnabler : VisibilityEnabler, can_reset : bool = false) -> void:
	pass
#	if randi() % 2 == 1:
#		AutoObjects.A_Object(q_VisibilityEnabler)
#		AutoObjects.A_Node(q_VisibilityEnabler)
#		AutoObjects.A_Spatial(q_VisibilityEnabler)
#
#	if randi() % 2 == 1:
#		q_VisibilityEnabler.set_enabler(Autoload.get_int(),Autoload.get_bool())
