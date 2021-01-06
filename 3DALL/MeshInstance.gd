extends MeshInstance3D

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_MeshInstance3D: MeshInstance3D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_MeshInstance3D)
		AutoObjects.A_Node(q_MeshInstance3D)
		AutoObjects.A_Node3D(q_MeshInstance3D)
		AutoObjects.A_VisualInstance3D(q_MeshInstance3D)
		AutoObjects.A_GeometryInstance3D(q_MeshInstance3D)

	### START TEMP
	var temp_BoxMesh: BoxMesh = BoxMesh.new()
#?#	AutoResourcesCubeMesh.nodeFunction(temp_BoxMesh)

	var temp_StandardMaterial3D: StandardMaterial3D = StandardMaterial3D.new()
##?#	AutoResourcesStandardMaterial3D.nodeFunction(temp_StandardMaterial3D)

	### END TEMP

	if randi() % 2 == 1:
		q_MeshInstance3D.set_mesh(temp_BoxMesh)
	if randi() % 2 == 1:
		q_MeshInstance3D.set_skeleton_path(Autoload.get_nodepath(q_MeshInstance3D))

# BUG CRASH GH#40505 - probably all three
#	if randi() % 2 == 1:
#		q_MeshInstance3D.create_convex_collision()
#	if randi() % 2 == 1:
#		q_MeshInstance3D.create_debug_tangents()
#	if randi() % 2 == 1:
#		q_MeshInstance3D.create_trimesh_collision()

	if randi() % 2 == 1:
		q_MeshInstance3D.get_active_material(Autoload.get_int())
	if randi() % 2 == 1:
		q_MeshInstance3D.get_surface_material(Autoload.get_int())
	if randi() % 2 == 1:
		q_MeshInstance3D.get_surface_material_count()

	if randi() % 2 == 1:
		q_MeshInstance3D.set_surface_material(Autoload.get_int(), temp_StandardMaterial3D)

#####################
	if randi() % 2 == 1:
		for i in q_MeshInstance3D.get_children():
			i.queue_free()
