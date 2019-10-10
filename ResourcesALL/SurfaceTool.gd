extends Node2D

var q_SurfaceTool : SurfaceTool = SurfaceTool.new()
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
			q_SurfaceTool = SurfaceTool.new()
		
		
		if randi() % 2 == 1:
			q_SurfaceTool.add_bones( PoolIntArray([11,124,1241,24,21,214,12,11]))
		if randi() % 2 == 1:
			q_SurfaceTool.add_color( Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			q_SurfaceTool.add_index( randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_SurfaceTool.add_normal( Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			q_SurfaceTool.add_smooth_group( bool(randi()%2))
		if randi() % 2 == 1:
			q_SurfaceTool.add_tangent( Plane(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) )
		if randi() % 2 == 1:
			q_SurfaceTool.add_triangle_fan( PoolVector3Array([Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)]), PoolVector2Array([Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)]), PoolColorArray([Color(randf(),randf(),randf(),randf()),Color(randf(),randf(),randf(),randf())]), PoolVector2Array([Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)]), PoolVector3Array([Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)]), [124,214,214,124,214,214,2] )
		if randi() % 2 == 1:
			q_SurfaceTool.add_uv( Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			q_SurfaceTool.add_uv2( Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			q_SurfaceTool.add_vertex( Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			q_SurfaceTool.add_weights( PoolRealArray([125125.125,12512.1251,122.124]))
			
		if randi() % 2 == 1:
			q_SurfaceTool.append_from( Mesh.new(), randi() % Autoload.RANGE - Autoload.RANGE / 2, Transform(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
		if randi() % 2 == 1:
			q_SurfaceTool.begin( randi() % Autoload.RANGE - Autoload.RANGE / 2 )#PrimitiveType
		if randi() % 2 == 1:
			q_SurfaceTool.clear()
			
		if randi() % 2 == 1:
			qq += str(q_SurfaceTool.commit( ArrayMesh.new(), randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(q_SurfaceTool.commit_to_arrays())
			
		if randi() % 2 == 1:
			q_SurfaceTool.create_from( Mesh.new(), randi() % Autoload.RANGE - Autoload.RANGE / 2 )
		if randi() % 2 == 1:
			q_SurfaceTool.create_from_blend_shape( Mesh.new(), randi() % Autoload.RANGE - Autoload.RANGE / 2, "Mapa" )
			
		if randi() % 2 == 1:
			q_SurfaceTool.deindex()
			
		if randi() % 2 == 1:
			q_SurfaceTool.generate_normals( bool(randi()%2))
		if randi() % 2 == 1:
			q_SurfaceTool.generate_tangents()
			
		if randi() % 2 == 1:
			q_SurfaceTool.index()
		if randi() % 2 == 1:
			q_SurfaceTool.set_material( SpatialMaterial.new() )
