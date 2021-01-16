extends Node2D

var q_SurfaceTool: SurfaceTool = SurfaceTool.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_SurfaceTool, true)


func nodeFunction(q_SurfaceTool: SurfaceTool, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_SurfaceTool = SurfaceTool.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_SurfaceTool)

	### START TEMP
	var temp_ArrayMesh: ArrayMesh = ArrayMesh.new()
	AutoResourcesArrayMesh.nodeFunction(temp_ArrayMesh)

#	var temp_StandardMaterial3D : StandardMaterial3D = StandardMaterial3D.new() #MISSING
#	AutoResourcesStandardMaterial3D.nodeFunction(temp_StandardMaterial3D)

	var temp_BoxMesh: BoxMesh = BoxMesh.new()
	AutoResourcesCubeMesh.nodeFunction(temp_BoxMesh)

	### END TEMP

#	if randi() % 2 == 1:
#		q_SurfaceTool.add_bones(Autoload.get_packedint32array())
#	if randi() % 2 == 1:
#		q_SurfaceTool.add_color(Autoload.get_color())
	if randi() % 2 == 1:
		q_SurfaceTool.add_index(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_SurfaceTool.add_normal(Autoload.get_vector3())
#	if randi() % 2 == 1:
#		q_SurfaceTool.add_smooth_group(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_SurfaceTool.add_tangent(Autoload.get_plane())
	if randi() % 2 == 1:
		q_SurfaceTool.add_triangle_fan(
			Autoload.get_packedvector3array(),
			Autoload.get_packedvector2array(),
			Autoload.get_packedcolorarray(),
			Autoload.get_packedvector2array(),
			Autoload.get_packedvector3array(),
			Autoload.get_array()
		)
#	if randi() % 2 == 1:
#		q_SurfaceTool.add_uv(Autoload.get_vector2())
#	if randi() % 2 == 1:
#		q_SurfaceTool.add_uv2(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_SurfaceTool.add_vertex(Autoload.get_vector3())
#	if randi() % 2 == 1:
#		q_SurfaceTool.add_weights(Autoload.get_packedfloat32array())

	if randi() % 2 == 1:
		q_SurfaceTool.append_from(temp_BoxMesh, Autoload.get_int(), Autoload.get_transform())
	if randi() % 2 == 1:
		q_SurfaceTool.begin(Autoload.get_int())  #PrimitiveType
	if randi() % 2 == 1:
		q_SurfaceTool.clear()

	if randi() % 2 == 1:
		q_SurfaceTool.commit(temp_ArrayMesh, Autoload.get_int())
	if randi() % 2 == 1:
		q_SurfaceTool.commit_to_arrays()

	if randi() % 2 == 1:
		q_SurfaceTool.create_from(temp_BoxMesh, Autoload.get_int())
	if randi() % 2 == 1:
		q_SurfaceTool.create_from_blend_shape(temp_BoxMesh, Autoload.get_int(), Autoload.get_string())

	if randi() % 2 == 1:
		q_SurfaceTool.deindex()

	if randi() % 2 == 1:
		q_SurfaceTool.generate_normals(Autoload.get_bool())
	if randi() % 2 == 1:
		q_SurfaceTool.generate_tangents()

	if randi() % 2 == 1:
		q_SurfaceTool.index()
#	if randi() % 2 == 1: MISSING
#		q_SurfaceTool.set_material( temp_StandardMaterial3D)
