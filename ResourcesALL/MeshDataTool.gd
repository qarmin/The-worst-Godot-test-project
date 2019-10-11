extends Node2D

var q_MeshDataTool : MeshDataTool = MeshDataTool.new()
var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if randi() % 2 == 1:
			q_MeshDataTool = MeshDataTool.new()
			
		
		if randi() % 2 == 1:
			q_MeshDataTool.clear()
		if randi() % 2 == 1:
			qq += str(q_MeshDataTool.commit_to_surface( ArrayMesh.new() ))
		if randi() % 2 == 1:
			qq += str(q_MeshDataTool.create_from_surface( ArrayMesh.new(), Autoload.get_randi() ))
			
		if randi() % 2 == 1:
			qq += str(q_MeshDataTool.get_edge_count())
		if randi() % 2 == 1:
			qq += str(q_MeshDataTool.get_edge_faces( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_MeshDataTool.get_edge_meta( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_MeshDataTool.get_edge_vertex( Autoload.get_randi(), Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_MeshDataTool.get_face_count())
		if randi() % 2 == 1:
			qq += str(q_MeshDataTool.get_face_edge( Autoload.get_randi(), Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_MeshDataTool.get_face_meta( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_MeshDataTool.get_face_normal( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_MeshDataTool.get_face_vertex( Autoload.get_randi(), Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_MeshDataTool.get_format())
		if randi() % 2 == 1:
			qq += str(q_MeshDataTool.get_material())
		if randi() % 2 == 1:
			qq += str(q_MeshDataTool.get_vertex( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_MeshDataTool.get_vertex_bones( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_MeshDataTool.get_vertex_color( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_MeshDataTool.get_vertex_count())
		if randi() % 2 == 1:
			qq += str(q_MeshDataTool.get_vertex_edges( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_MeshDataTool.get_vertex_faces( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_MeshDataTool.get_vertex_meta( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_MeshDataTool.get_vertex_normal( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_MeshDataTool.get_vertex_tangent( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_MeshDataTool.get_vertex_uv( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_MeshDataTool.get_vertex_uv2( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_MeshDataTool.get_vertex_weights( Autoload.get_randi() ))
			
		if randi() % 2 == 1:
			q_MeshDataTool.set_edge_meta( Autoload.get_randi(), Autoload.get_randf())
		if randi() % 2 == 1:
			q_MeshDataTool.set_face_meta( Autoload.get_randi(), Autoload.get_randf())
		if randi() % 2 == 1:
			q_MeshDataTool.set_material( Autoload.loadA("res://RES/SpatialMaterial.tres"))
		if randi() % 2 == 1:
			q_MeshDataTool.set_vertex( Autoload.get_randi(), Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			q_MeshDataTool.set_vertex_bones( Autoload.get_randi(), PoolIntArray([11,124,1241,24,21,214,12,11]))
		if randi() % 2 == 1:
			q_MeshDataTool.set_vertex_color( Autoload.get_randi(), Color(randf(),randf(),randf(),randf()) )
		if randi() % 2 == 1:
			q_MeshDataTool.set_vertex_meta( Autoload.get_randi(), Autoload.get_randf())
		if randi() % 2 == 1:
			q_MeshDataTool.set_vertex_normal( Autoload.get_randi(), Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			q_MeshDataTool.set_vertex_tangent( Autoload.get_randi(), Plane(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			q_MeshDataTool.set_vertex_uv( Autoload.get_randi(), Vector2(Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			q_MeshDataTool.set_vertex_uv2( Autoload.get_randi(), Vector2(Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			q_MeshDataTool.set_vertex_weights( Autoload.get_randi(), PoolRealArray([125125.125,12512.1251,122.124]))
