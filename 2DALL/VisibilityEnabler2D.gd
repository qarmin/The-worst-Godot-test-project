extends VisibilityEnabler2D

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Node2D(self)
		AutoVisibilityNotifier2D.nodeFunction(self)
		nodeFunction(self)

func nodeFunction(q_VisibilityEnabler2D : VisibilityEnabler2D) -> void:

	if randi() % 2 == 1:
		q_VisibilityEnabler2D.set_enabler(Autoload.get_int(),Autoload.get_bool())# Enabler
