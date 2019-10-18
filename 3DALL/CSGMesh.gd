extends CSGMesh

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
		AutoObjects.A_CSGPrimitive(self)
		nodeFunction(self)

func nodeFunction(q_CSGMesh : CSGMesh) -> void:

	if randi() % 2 == 1:
		q_CSGMesh.set_mesh(Autoload.loadA("CubeMesh.tres"))
	if randi() % 2 == 1:
		q_CSGMesh.set_material(Autoload.loadA("SpatialMaterial.tres"))
