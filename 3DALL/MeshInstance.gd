extends MeshInstance

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

func nodeFunction(q_MeshInstance : MeshInstance, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		q_MeshInstance.set_mesh(Autoload.loadA("CubeMesh.tres"))
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
		q_MeshInstance.set_surface_material(Autoload.get_int(), Autoload.loadA("SpatialMaterial.tres"))

#####################
	if randi() % 2 == 1:
		for i in q_MeshInstance.get_children():
			i.queue_free()
