extends Node2D

onready var counter : float = Autoload.get_rand_time()

#
#
#
func alt_process(delta) -> void:
	pass
#	counter -= delta
#
#
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#
#		var q_EditorSpatialGizmo : EditorSpatialGizmo = EditorSpatialGizmo.new()
#
#		q_EditorSpatialGizmo.commit_handle( Autoload.get_int(), Autoload.get_string(), Autoload.get_bool())
#		q_EditorSpatialGizmo.get_handle_name( Autoload.get_int())
#		q_EditorSpatialGizmo.get_handle_value( Autoload.get_int())
#		q_EditorSpatialGizmo.is_handle_highlighted( Autoload.get_int())
#		q_EditorSpatialGizmo.redraw()
#		q_EditorSpatialGizmo.set_handle( Autoload.get_int(), Camera.new(), Autoload.get_vector2())
#
#		q_EditorSpatialGizmo.add_collision_segments( Autoload.get_packedvector3array())
#		q_EditorSpatialGizmo.add_collision_triangles( TriangleMesh.new())
#		q_EditorSpatialGizmo.add_handles( Autoload.get_packedvector3array(), SpatialMaterial.new(), Autoload.get_bool(), Autoload.get_bool())
#		q_EditorSpatialGizmo.add_lines( Autoload.get_packedvector3array(), SpatialMaterial.new(), Autoload.get_bool())
#		q_EditorSpatialGizmo.add_mesh( temp_ArrayMesh, Autoload.get_bool(), RID(), SpatialMaterial.new())
#		q_EditorSpatialGizmo.add_unscaled_billboard( Material.new(), Autoload.get_float())
#
#		q_EditorSpatialGizmo.clear()
#
#		q_EditorSpatialGizmo.get_plugin()
#		q_EditorSpatialGizmo.get_spatial_node()
#
#		q_EditorSpatialGizmo.set_hidden(Autoload.get_bool())
#		q_EditorSpatialGizmo.set_spatial_node( Node.new())
#
