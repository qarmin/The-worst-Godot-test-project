extends CSGCombiner

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_CSGCombiner : CSGCombiner, can_reset : bool = false) -> void:
	
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_CSGCombiner)
		AutoObjects.A_Node(q_CSGCombiner)
		AutoObjects.A_Spatial(q_CSGCombiner)
		AutoObjects.A_VisualInstance(q_CSGCombiner)
		AutoObjects.A_GeometryInstance(q_CSGCombiner)
		AutoObjects.A_CSGShape(q_CSGCombiner)
