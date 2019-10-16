extends MeshInstance

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_mesh(Autoload.loadA("CubeMesh.tres"))
		if randi() % 2 == 1:
			set_skeleton_path(Autoload.get_nodepath(self))

		if randi() % 2 == 1:
			create_convex_collision() #BUK
		if randi() % 2 == 1:
			create_debug_tangents()
		if randi() % 2 == 1:
			create_trimesh_collision()
		if randi() % 2 == 1:
			Autoload.qq = str(get_surface_material(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_surface_material_count())
		if randi() % 2 == 1:
			set_surface_material(Autoload.get_int(), Autoload.loadA("SpatialMaterial.tres"))

#####################
		if randi() % 2 == 1:
			for i in get_children():
				i.queue_free()
