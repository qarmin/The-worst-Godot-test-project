extends MultiMeshInstance

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_MultiMeshInstance : MultiMeshInstance, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_MultiMeshInstance)
		AutoObjects.A_Node(q_MultiMeshInstance)
		AutoObjects.A_Spatial(q_MultiMeshInstance)
		AutoObjects.A_VisualInstance(q_MultiMeshInstance)
		AutoObjects.A_GeometryInstance(q_MultiMeshInstance)
		
	if randi() % 2 == 1:
		q_MultiMeshInstance.set_multimesh(MultiMesh.new())
