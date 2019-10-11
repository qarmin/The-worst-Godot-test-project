extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

#func _ready():
#	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#func _process(delta) -> void:
#	counter -= delta
#	var qq : String = ""
#	qq = qq
#
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#		var q_EditorSpatialGizmoPlugin : EditorSpatialGizmoPlugin = EditorSpatialGizmoPlugin.new()
#
#		qq += str(q_EditorSpatialGizmoPlugin.can_be_hidden())
#		q_EditorSpatialGizmoPlugin.commit_handle( EditorSpatialGizmo gizmo, int index, Variant restore, bool cancel=false )
#		q_EditorSpatialGizmoPlugin.create_gizmo( Spatial spatial )
#		q_EditorSpatialGizmoPlugin.get_handle_name( EditorSpatialGizmo gizmo, int index )
#		q_EditorSpatialGizmoPlugin.get_handle_value( EditorSpatialGizmo gizmo, int index )
#		q_EditorSpatialGizmoPlugin.get_name()
#		q_EditorSpatialGizmoPlugin.get_priority()
#		q_EditorSpatialGizmoPlugin.has_gizmo( Spatial spatial )
#		q_EditorSpatialGizmoPlugin.is_handle_highlighted( EditorSpatialGizmo gizmo, int index )
#		q_EditorSpatialGizmoPlugin.is_selectable_when_hidden()
#		q_EditorSpatialGizmoPlugin.redraw( EditorSpatialGizmo gizmo )
#		q_EditorSpatialGizmoPlugin.set_handle( EditorSpatialGizmo gizmo, int index, Camera camera, Vector2 point )

#		q_EditorSpatialGizmoPlugin.add_material( Autoload.get_string(), SpatialMaterial.new() )
#
#		q_EditorSpatialGizmoPlugin.create_handle_material( Autoload.get_string(), bool(randi()%2))
#		q_EditorSpatialGizmoPlugin.create_icon_material( Autoload.get_string(), Autoload.loadA("res://RES/Sprite.png",false), bool(randi()%2), Color(randf(),randf(),randf(),randf()))
#		q_EditorSpatialGizmoPlugin.create_material( Autoload.get_string(), Color(randf(),randf(),randf(),randf()), bool(randi()%2), bool(randi()%2), bool(randi()%2) )
#
#		qq += str(q_EditorSpatialGizmoPlugin.get_material( Autoload.get_string(), EditorSpatialGizmo.new() ))
#
