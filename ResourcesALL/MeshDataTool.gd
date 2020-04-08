extends Node2D

var q_MeshDataTool : MeshDataTool = MeshDataTool.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_MeshDataTool,true)

func nodeFunction(q_MeshDataTool : MeshDataTool, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_MeshDataTool = MeshDataTool.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_MeshDataTool)
		
	### START TEMP 
#	var temp_StandardMaterial : StandardMaterial = StandardMaterial.new() #MISSING
#	AutoResourcesStandardMaterial.nodeFunction(temp_StandardMaterial)
	
	var temp_ArrayMesh : ArrayMesh = ArrayMesh.new()
	AutoResourcesArrayMesh.nodeFunction(temp_ArrayMesh)
	
	### END TEMP

	if randi() % 2 == 1:
		q_MeshDataTool.clear()
	if randi() % 2 == 1:
		q_MeshDataTool.commit_to_surface( temp_ArrayMesh)
	if randi() % 2 == 1:
		q_MeshDataTool.create_from_surface( temp_ArrayMesh, Autoload.get_int())

	if randi() % 2 == 1:
		q_MeshDataTool.get_edge_count()
	if randi() % 2 == 1:
		q_MeshDataTool.get_edge_faces( Autoload.get_int())
	if randi() % 2 == 1:
		q_MeshDataTool.get_edge_meta( Autoload.get_int())
	if randi() % 2 == 1:
		q_MeshDataTool.get_edge_vertex( Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_MeshDataTool.get_face_count()
	if randi() % 2 == 1:
		q_MeshDataTool.get_face_edge( Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_MeshDataTool.get_face_meta( Autoload.get_int())
	if randi() % 2 == 1:
		q_MeshDataTool.get_face_normal( Autoload.get_int())
	if randi() % 2 == 1:
		q_MeshDataTool.get_face_vertex( Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_MeshDataTool.get_format()
	if randi() % 2 == 1:
		q_MeshDataTool.get_material()
	if randi() % 2 == 1:
		q_MeshDataTool.get_vertex( Autoload.get_int())
	if randi() % 2 == 1:
		q_MeshDataTool.get_vertex_bones( Autoload.get_int())
	if randi() % 2 == 1:
		q_MeshDataTool.get_vertex_color( Autoload.get_int())
	if randi() % 2 == 1:
		q_MeshDataTool.get_vertex_count()
	if randi() % 2 == 1:
		q_MeshDataTool.get_vertex_edges( Autoload.get_int())
	if randi() % 2 == 1:
		q_MeshDataTool.get_vertex_faces( Autoload.get_int())
	if randi() % 2 == 1:
		q_MeshDataTool.get_vertex_meta( Autoload.get_int())
	if randi() % 2 == 1:
		q_MeshDataTool.get_vertex_normal( Autoload.get_int())
	if randi() % 2 == 1:
		q_MeshDataTool.get_vertex_tangent( Autoload.get_int())
	if randi() % 2 == 1:
		q_MeshDataTool.get_vertex_uv( Autoload.get_int())
	if randi() % 2 == 1:
		q_MeshDataTool.get_vertex_uv2( Autoload.get_int())
	if randi() % 2 == 1:
		q_MeshDataTool.get_vertex_weights( Autoload.get_int())

	if randi() % 2 == 1:
		q_MeshDataTool.set_edge_meta( Autoload.get_int(), Autoload.get_float())
	if randi() % 2 == 1:
		q_MeshDataTool.set_face_meta( Autoload.get_int(), Autoload.get_float())
#	if randi() % 2 == 1: MISSING
#		q_MeshDataTool.set_material( temp_StandardMaterial)
	if randi() % 2 == 1:
		q_MeshDataTool.set_vertex( Autoload.get_int(), Autoload.get_vector3())
	if randi() % 2 == 1:
		q_MeshDataTool.set_vertex_bones( Autoload.get_int(), Autoload.get_packedint32array())
	if randi() % 2 == 1:
		q_MeshDataTool.set_vertex_color( Autoload.get_int(), Autoload.get_color())
	if randi() % 2 == 1:
		q_MeshDataTool.set_vertex_meta( Autoload.get_int(), Autoload.get_float())
	if randi() % 2 == 1:
		q_MeshDataTool.set_vertex_normal( Autoload.get_int(), Autoload.get_vector3())
	if randi() % 2 == 1:
		q_MeshDataTool.set_vertex_tangent( Autoload.get_int(), Autoload.get_plane())
	if randi() % 2 == 1:
		q_MeshDataTool.set_vertex_uv( Autoload.get_int(), Autoload.get_vector2())
	if randi() % 2 == 1:
		q_MeshDataTool.set_vertex_uv2( Autoload.get_int(), Autoload.get_vector2())
	if randi() % 2 == 1:
		q_MeshDataTool.set_vertex_weights( Autoload.get_int(), Autoload.get_packedfloat32array())
