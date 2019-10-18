extends CSGCombiner

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_Spatial(self)
		AutoObjects.A_VisualInstance(self)
		AutoObjects.A_GeometryInstance(self)
		AutoObjects.A_CSGShape(self)
		nodeFunction(self)

func nodeFunction(q_CSGCombiner : CSGCombiner) -> void:
	pass
