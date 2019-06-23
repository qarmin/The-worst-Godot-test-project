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
		
#		var q_EditorSpatialGizmo : EditorSpatialGizmo = EditorSpatialGizmo.new()
#
#		q_EditorSpatialGizmo.commit_handle( 0, "Nie", bool(randi()%2))
#		q_EditorSpatialGizmo.get_handle_name( 0 )
#		q_EditorSpatialGizmo.get_handle_value( 0 )
#		q_EditorSpatialGizmo.is_handle_highlighted( 0 )
#		q_EditorSpatialGizmo.redraw()
#		q_EditorSpatialGizmo.set_handle( 0, Camera.new(), Vector2(randf() * 50,randf() * 50))
#
#		q_EditorSpatialGizmo.add_collision_segments( PoolVector3Array([Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)]))
#		q_EditorSpatialGizmo.add_collision_triangles( TriangleMesh.new() )
#		q_EditorSpatialGizmo.add_handles( PoolVector3Array([Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)]), Material.new(), bool(randi()%2), bool(randi()%2))
#		q_EditorSpatialGizmo.add_lines( PoolVector3Array([Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)]), Material.new(), bool(randi()%2) )
#		q_EditorSpatialGizmo.add_mesh( ArrayMesh.new(), bool(randi()%2), RID(), Material.new() )
#		q_EditorSpatialGizmo.add_unscaled_billboard( Material.new(), randf() * 50)
#
#		q_EditorSpatialGizmo.clear()
#
#		q_EditorSpatialGizmo.get_plugin()
#		q_EditorSpatialGizmo.get_spatial_node()
#
#		q_EditorSpatialGizmo.set_hidden(bool(randi()%2))
#		q_EditorSpatialGizmo.set_spatial_node( Node.new())
#
#		if Autoload.WRONG_BUGS:
#			pass
