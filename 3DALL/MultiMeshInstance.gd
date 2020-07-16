extends MultiMeshInstance3D

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_MultiMeshInstance3D: MultiMeshInstance3D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_MultiMeshInstance3D)
		AutoObjects.A_Node(q_MultiMeshInstance3D)
		AutoObjects.A_Node3D(q_MultiMeshInstance3D)
		AutoObjects.A_VisualInstance3D(q_MultiMeshInstance3D)
		AutoObjects.A_GeometryInstance3D(q_MultiMeshInstance3D)

	### START TEMP
	var temp_MultiMesh: MultiMesh = MultiMesh.new()
#?#	AutoResourcesMultiMesh.nodeFunction(temp_MultiMesh)

	### END TEMP

	if randi() % 2 == 1:
		q_MultiMeshInstance3D.set_multimesh(temp_MultiMesh)
