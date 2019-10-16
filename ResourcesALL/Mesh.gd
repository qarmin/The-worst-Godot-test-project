extends Node2D

var q_Mesh : Mesh = Mesh.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_Mesh = Mesh.new()

		if randi() % 2 == 1:
			Autoload.qq = str(q_Mesh.create_convex_shape())
		if randi() % 2 == 1:
			Autoload.qq = str(q_Mesh.create_outline( Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Mesh.create_trimesh_shape())
		if randi() % 2 == 1:
			Autoload.qq = str(q_Mesh.generate_triangle_mesh())
		if randi() % 2 == 1:
			Autoload.qq = str(q_Mesh.get_faces())
		if randi() % 2 == 1:
			Autoload.qq = str(q_Mesh.get_surface_count())
		if randi() % 2 == 1:
			Autoload.qq = str(q_Mesh.surface_get_arrays( Autoload.get_int() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Mesh.surface_get_blend_shape_arrays( Autoload.get_int() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Mesh.surface_get_material( Autoload.get_int() ))
		if randi() % 2 == 1:
			q_Mesh.surface_set_material( Autoload.get_int(), Autoload.loadA("SpatialMaterial.tres"))
