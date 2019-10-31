extends CSGMesh

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_CSGMesh : CSGMesh, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_CSGMesh)
		AutoObjects.A_Node(q_CSGMesh)
		AutoObjects.A_Spatial(q_CSGMesh)
		AutoObjects.A_VisualInstance(q_CSGMesh)
		AutoObjects.A_GeometryInstance(q_CSGMesh)
		AutoObjects.A_CSGShape(q_CSGMesh)
		AutoObjects.A_CSGPrimitive(q_CSGMesh)
		
	### START TEMP
	var temp_SpatialMaterial : SpatialMaterial = SpatialMaterial.new()
	AutoResourcesSpatialMaterial.nodeFunction(temp_SpatialMaterial)
	
	var temp_CubeMesh : CubeMesh = CubeMesh.new()
#?#	AutoResourcesCubeMesh.nodeFunction(temp_CubeMesh)
	
	### END TEMP
		
	if randi() % 2 == 1:
		q_CSGMesh.set_mesh(temp_CubeMesh)
	if randi() % 2 == 1:
		q_CSGMesh.set_material(temp_SpatialMaterial)
