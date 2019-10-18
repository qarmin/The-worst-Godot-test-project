extends Node2D

var q_SurfaceTool : SurfaceTool = SurfaceTool.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_SurfaceTool = SurfaceTool.new()

		if randi() % 2 == 1:
			q_SurfaceTool.add_bones( Autoload.get_poolintarray())
		if randi() % 2 == 1:
			q_SurfaceTool.add_color( Autoload.get_color())
		if randi() % 2 == 1:
			q_SurfaceTool.add_index( Autoload.get_int())
		if randi() % 2 == 1:
			q_SurfaceTool.add_normal( Autoload.get_vector3())
		if randi() % 2 == 1:
			q_SurfaceTool.add_smooth_group( Autoload.get_bool())
		if randi() % 2 == 1:
			q_SurfaceTool.add_tangent( Autoload.get_plane() )
		if randi() % 2 == 1:
			q_SurfaceTool.add_triangle_fan( Autoload.get_poolvector3array(), Autoload.get_poolvector2array(), Autoload.get_poolcolorarray(), Autoload.get_poolvector2array(), Autoload.get_poolvector3array(), Autoload.get_array() )
		if randi() % 2 == 1:
			q_SurfaceTool.add_uv( Autoload.get_vector2())
		if randi() % 2 == 1:
			q_SurfaceTool.add_uv2( Autoload.get_vector2())
		if randi() % 2 == 1:
			q_SurfaceTool.add_vertex( Autoload.get_vector3())
		if randi() % 2 == 1:
			q_SurfaceTool.add_weights( Autoload.get_poolrealarray())

		if randi() % 2 == 1:
			q_SurfaceTool.append_from( Mesh.new(), Autoload.get_int(), Autoload.get_transform())
		if randi() % 2 == 1:
			q_SurfaceTool.begin( Autoload.get_int() )#PrimitiveType
		if randi() % 2 == 1:
			q_SurfaceTool.clear()

		if randi() % 2 == 1:
			Autoload.qq = str(q_SurfaceTool.commit( Autoload.loadA("ArrayMesh.tres"), Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(q_SurfaceTool.commit_to_arrays())

		if randi() % 2 == 1:
			q_SurfaceTool.create_from( Mesh.new(), Autoload.get_int() )
		if randi() % 2 == 1:
			q_SurfaceTool.create_from_blend_shape( Mesh.new(), Autoload.get_int(), Autoload.get_string() )

		if randi() % 2 == 1:
			q_SurfaceTool.deindex()

		if randi() % 2 == 1:
			q_SurfaceTool.generate_normals( Autoload.get_bool())
		if randi() % 2 == 1:
			q_SurfaceTool.generate_tangents()

		if randi() % 2 == 1:
			q_SurfaceTool.index()
		if randi() % 2 == 1:
			q_SurfaceTool.set_material( Autoload.loadA("SpatialMaterial.tres") )
