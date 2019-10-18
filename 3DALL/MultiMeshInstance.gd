extends MultiMeshInstance

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
		nodeFunction(self)

func nodeFunction(q_MultiMeshInstance : MultiMeshInstance) -> void:

	if randi() % 2 == 1:
		q_MultiMeshInstance.set_multimesh(MultiMesh.new())
