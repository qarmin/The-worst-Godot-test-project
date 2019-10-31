extends MeshInstance

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_MeshInstance : MeshInstance, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_MeshInstance)
		AutoObjects.A_Node(q_MeshInstance)
		AutoObjects.A_Spatial(q_MeshInstance)
		AutoObjects.A_VisualInstance(q_MeshInstance)
		AutoObjects.A_GeometryInstance(q_MeshInstance)
		
	### START TEMP
	var temp_CubeMesh : CubeMesh = CubeMesh.new()
#?#	AutoResourcesCubeMesh.nodeFunction(temp_CubeMesh)
	
	var temp_SpatialMaterial : SpatialMaterial = SpatialMaterial.new()
#?#	AutoResourcesSpatialMaterial.nodeFunction(temp_SpatialMaterial)
	
	### END TEMP
	
		
	if randi() % 2 == 1:
		q_MeshInstance.set_mesh(temp_CubeMesh)
	if randi() % 2 == 1:
		q_MeshInstance.set_skeleton_path(Autoload.get_nodepath(q_MeshInstance))

	if randi() % 2 == 1:
		q_MeshInstance.create_convex_collision() #BUK
	if randi() % 2 == 1:
		q_MeshInstance.create_debug_tangents()
	if randi() % 2 == 1:
		q_MeshInstance.create_trimesh_collision()
	if randi() % 2 == 1:
		q_MeshInstance.get_surface_material(Autoload.get_int())
	if randi() % 2 == 1:
		q_MeshInstance.get_surface_material_count()
	if randi() % 2 == 1:
		q_MeshInstance.set_surface_material(Autoload.get_int(), temp_SpatialMaterial)

#####################
	if randi() % 2 == 1:
		for i in q_MeshInstance.get_children():
			i.queue_free()
