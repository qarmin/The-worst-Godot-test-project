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
		
			var q_SurfaceTool : SurfaceTool = SurfaceTool.new()
			
			#q_SurfaceTool.add_bones( PoolIntArray([11,124,1241,24,21,214,12,11]))
			#q_SurfaceTool.add_color( Color(randf(),randf(),randf(),randf()))
			#q_SurfaceTool.add_index( randi()%50)
			#q_SurfaceTool.add_normal( Vector3(randf() * 50,randf() * 50,randf() * 50))
			#q_SurfaceTool.add_smooth_group( bool(randi()%2))
			#q_SurfaceTool.add_tangent( Plane(randf() * 50,randf() * 50,randf() * 50,randf() * 50) )
			#q_SurfaceTool.add_triangle_fan( PoolVector3Array([Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)]), PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]), PoolColorArray([Color(randf(),randf(),randf(),randf()),Color(randf(),randf(),randf(),randf())]), PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]), PoolVector3Array([Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)]), [124,214,214,124,214,214,2] )
			#q_SurfaceTool.add_uv( Vector2(randf() * 50,randf() * 50))
			#q_SurfaceTool.add_uv2( Vector2(randf() * 50,randf() * 50))
			#q_SurfaceTool.add_vertex( Vector3(randf() * 50,randf() * 50,randf() * 50))
			#q_SurfaceTool.add_weights( PoolRealArray([125125.125,12512.1251,122.124]))
			
			#q_SurfaceTool.append_from( Mesh.new(), 0, Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
			q_SurfaceTool.begin( randi() % 7 )#PrimitiveType
			q_SurfaceTool.clear()
			
			qq += str(q_SurfaceTool.commit( ArrayMesh.new(), randi()%50000))
			qq += str(q_SurfaceTool.commit_to_arrays())
			
			#q_SurfaceTool.create_from( Mesh.new(), 0 )
			#q_SurfaceTool.create_from_blend_shape( Mesh.new(), 0, "Mapa" )
			
			q_SurfaceTool.deindex()
			
			#q_SurfaceTool.generate_normals( bool(randi()%2))
			#q_SurfaceTool.generate_tangents()
			
			q_SurfaceTool.index()
			q_SurfaceTool.set_material( SpatialMaterial.new() )
			
			if Autoload.WRONG_BUGS:
				q_SurfaceTool.add_bones( PoolIntArray([11,124,1241,24,21,214,12,11]))
				q_SurfaceTool.add_color( Color(randf(),randf(),randf(),randf()))
				q_SurfaceTool.add_index( randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_SurfaceTool.add_normal( Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				q_SurfaceTool.add_smooth_group( bool(randi()%2))
				q_SurfaceTool.add_tangent( Plane(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) )
				q_SurfaceTool.add_triangle_fan( PoolVector3Array([Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)]), PoolVector2Array([Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)]), PoolColorArray([Color(randf(),randf(),randf(),randf()),Color(randf(),randf(),randf(),randf())]), PoolVector2Array([Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)]), PoolVector3Array([Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)]), [124,214,214,124,214,214,2] )
				q_SurfaceTool.add_uv( Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				q_SurfaceTool.add_uv2( Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				q_SurfaceTool.add_vertex( Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				q_SurfaceTool.add_weights( PoolRealArray([125125.125,12512.1251,122.124]))
				
				q_SurfaceTool.append_from( Mesh.new(), randi() % Autoload.RANGE - Autoload.RANGE / 2, Transform(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
				q_SurfaceTool.begin( randi() % Autoload.RANGE - Autoload.RANGE / 2 )#PrimitiveType
				q_SurfaceTool.clear()
				
				qq += str(q_SurfaceTool.commit( ArrayMesh.new(), randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(q_SurfaceTool.commit_to_arrays())
				
				q_SurfaceTool.create_from( Mesh.new(), randi() % Autoload.RANGE - Autoload.RANGE / 2 )
				q_SurfaceTool.create_from_blend_shape( Mesh.new(), randi() % Autoload.RANGE - Autoload.RANGE / 2, "Mapa" )
				
				q_SurfaceTool.deindex()
				
				q_SurfaceTool.generate_normals( bool(randi()%2))
				q_SurfaceTool.generate_tangents()
				
				q_SurfaceTool.index()
				q_SurfaceTool.set_material( SpatialMaterial.new() )
