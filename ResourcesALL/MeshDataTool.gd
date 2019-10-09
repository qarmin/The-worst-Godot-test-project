extends Node2D

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
		if !Autoload.RANDI:
			
			var q_MeshDataTool : MeshDataTool = MeshDataTool.new()
			
			q_MeshDataTool.clear()
			#qq += str(q_MeshDataTool.commit_to_surface( ArrayMesh.new() ))
			#qq += str(q_MeshDataTool.create_from_surface( ArrayMesh.new(), 0 ))
			
			qq += str(q_MeshDataTool.get_edge_count())
			#qq += str(q_MeshDataTool.get_edge_faces( 0 ))
			#qq += str(q_MeshDataTool.get_edge_meta( 0 ))
			#qq += str(q_MeshDataTool.get_edge_vertex( 0, 0 ))
			qq += str(q_MeshDataTool.get_face_count())
			#qq += str(q_MeshDataTool.get_face_edge( 0, 0 ))
			#qq += str(q_MeshDataTool.get_face_meta( 0 ))
			#qq += str(q_MeshDataTool.get_face_normal( 0 ))
			#qq += str(q_MeshDataTool.get_face_vertex( 0, 0 ))
			qq += str(q_MeshDataTool.get_format())
			qq += str(q_MeshDataTool.get_material())
			#qq += str(q_MeshDataTool.get_vertex( 0 ))
			#qq += str(q_MeshDataTool.get_vertex_bones( 0 ))
			#qq += str(q_MeshDataTool.get_vertex_color( 0 ))
			qq += str(q_MeshDataTool.get_vertex_count())
			#qq += str(q_MeshDataTool.get_vertex_edges( 0 ))
			#qq += str(q_MeshDataTool.get_vertex_faces( 0 ))
			#qq += str(q_MeshDataTool.get_vertex_meta( 0 ))
			#qq += str(q_MeshDataTool.get_vertex_normal( 0 ))
			#qq += str(q_MeshDataTool.get_vertex_tangent( 0 ))
			#qq += str(q_MeshDataTool.get_vertex_uv( 0 ))
			#qq += str(q_MeshDataTool.get_vertex_uv2( 0 ))
			#qq += str(q_MeshDataTool.get_vertex_weights( 0 ))
			
			#q_MeshDataTool.set_edge_meta( 0, randf() * 50)
			#q_MeshDataTool.set_face_meta( 0, randf() * 50)
			q_MeshDataTool.set_material( SpatialMaterial.new() )
			#q_MeshDataTool.set_vertex( 0, Vector3(randf() * 50,randf() * 50,randf() * 50))
			#q_MeshDataTool.set_vertex_bones( 0, PoolIntArray([11,124,1241,24,21,214,12,11]))
			#q_MeshDataTool.set_vertex_color( 0, Color(randf(),randf(),randf(),randf()) )
			#q_MeshDataTool.set_vertex_meta( 0, randf() * 50)
			#q_MeshDataTool.set_vertex_normal( 0, Vector3(randf() * 50,randf() * 50,randf() * 50))
			#q_MeshDataTool.set_vertex_tangent( 0, Plane(randf() * 50,randf() * 50,randf() * 50,randf() * 50))
			#q_MeshDataTool.set_vertex_uv( 0, Vector2(randf() * 50,randf() * 50))
			#q_MeshDataTool.set_vertex_uv2( 0, Vector2(randf() * 50,randf() * 50))
			#q_MeshDataTool.set_vertex_weights( 0, PoolRealArray([125125.125,12512.1251,122.124]))
			
			if Autoload.WRONG_BUGS:
				q_MeshDataTool.clear()
				qq += str(q_MeshDataTool.commit_to_surface( ArrayMesh.new() ))
				qq += str(q_MeshDataTool.create_from_surface( ArrayMesh.new(), randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				
				qq += str(q_MeshDataTool.get_edge_count())
				qq += str(q_MeshDataTool.get_edge_faces( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_MeshDataTool.get_edge_meta( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_MeshDataTool.get_edge_vertex( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_MeshDataTool.get_face_count())
				qq += str(q_MeshDataTool.get_face_edge( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_MeshDataTool.get_face_meta( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_MeshDataTool.get_face_normal( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_MeshDataTool.get_face_vertex( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_MeshDataTool.get_format())
				qq += str(q_MeshDataTool.get_material())
				qq += str(q_MeshDataTool.get_vertex( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_MeshDataTool.get_vertex_bones( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_MeshDataTool.get_vertex_color( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_MeshDataTool.get_vertex_count())
				qq += str(q_MeshDataTool.get_vertex_edges( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_MeshDataTool.get_vertex_faces( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_MeshDataTool.get_vertex_meta( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_MeshDataTool.get_vertex_normal( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_MeshDataTool.get_vertex_tangent( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_MeshDataTool.get_vertex_uv( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_MeshDataTool.get_vertex_uv2( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_MeshDataTool.get_vertex_weights( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				
				q_MeshDataTool.set_edge_meta( randi() % Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_MeshDataTool.set_face_meta( randi() % Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_MeshDataTool.set_material( Autoload.loadA("res://RES/SpatialMaterial.tres"))
				q_MeshDataTool.set_vertex( randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				q_MeshDataTool.set_vertex_bones( randi() % Autoload.RANGE - Autoload.RANGE / 2, PoolIntArray([11,124,1241,24,21,214,12,11]))
				q_MeshDataTool.set_vertex_color( randi() % Autoload.RANGE - Autoload.RANGE / 2, Color(randf(),randf(),randf(),randf()) )
				q_MeshDataTool.set_vertex_meta( randi() % Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_MeshDataTool.set_vertex_normal( randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				q_MeshDataTool.set_vertex_tangent( randi() % Autoload.RANGE - Autoload.RANGE / 2, Plane(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				q_MeshDataTool.set_vertex_uv( randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				q_MeshDataTool.set_vertex_uv2( randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				q_MeshDataTool.set_vertex_weights( randi() % Autoload.RANGE - Autoload.RANGE / 2, PoolRealArray([125125.125,12512.1251,122.124]))
