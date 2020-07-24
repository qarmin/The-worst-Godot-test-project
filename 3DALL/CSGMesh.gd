extends CSGMesh3D

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_CSGMesh3D: CSGMesh3D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_CSGMesh3D)
		AutoObjects.A_Node(q_CSGMesh3D)
		AutoObjects.A_Node3D(q_CSGMesh3D)
		AutoObjects.A_VisualInstance3D(q_CSGMesh3D)
		AutoObjects.A_GeometryInstance3D(q_CSGMesh3D)
		AutoObjects.A_CSGShape3D(q_CSGMesh3D)
		AutoObjects.A_CSGPrimitive3D(q_CSGMesh3D)

	### START TEMP
#	var temp_StandardMaterial3D : StandardMaterial3D = StandardMaterial3D.new() #MISSING
#	AutoResourcesStandardMaterial3D.nodeFunction(temp_StandardMaterial3D)

	var temp_CubeMesh: CubeMesh = CubeMesh.new()
#?#	AutoResourcesCubeMesh.nodeFunction(temp_CubeMesh)

	### END TEMP

	if randi() % 2 == 1:
		q_CSGMesh3D.set_mesh(temp_CubeMesh)
#	if randi() % 2 == 1: #MISSING
#		q_CSGMesh3D.set_material(temp_StandardMaterial3D)
