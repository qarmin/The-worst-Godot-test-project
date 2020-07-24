extends CSGCombiner3D

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_CSGCombiner3D: CSGCombiner3D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_CSGCombiner3D)
		AutoObjects.A_Node(q_CSGCombiner3D)
		AutoObjects.A_Node3D(q_CSGCombiner3D)
		AutoObjects.A_VisualInstance3D(q_CSGCombiner3D)
		AutoObjects.A_GeometryInstance3D(q_CSGCombiner3D)
		AutoObjects.A_CSGShape3D(q_CSGCombiner3D)
