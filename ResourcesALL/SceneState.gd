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
#		if !Autoload.RANDI:
#			pass
#
#		var q_SceneState : SceneState = SceneState.new()
#
#		q_SceneState.get_connection_binds( 0 )
#		q_SceneState.get_connection_count()
#		q_SceneState.get_connection_flags( 0 )
#		q_SceneState.get_connection_method( 0 )
#		q_SceneState.get_connection_signal( 0 )
#		q_SceneState.get_connection_source( 0 )
#		q_SceneState.get_connection_target( 0 )
#		q_SceneState.get_node_count()
#		q_SceneState.get_node_groups( 0 )
#		q_SceneState.get_node_index( 0 )
#		q_SceneState.get_node_instance( 0 )
#		q_SceneState.get_node_instance_placeholder( 0 )
#		q_SceneState.get_node_name( 0 )
#		q_SceneState.get_node_owner_path( 0 )
#		q_SceneState.get_node_path( 0, bool(randi()%2))
#		q_SceneState.get_node_property_count( 0 )
#		q_SceneState.get_node_property_name( 0, 0 )
#		q_SceneState.get_node_property_value( 0, 0 )
#		q_SceneState.get_node_type( 0 )
#
#		q_SceneState.is_node_instance_placeholder( 0 )
#
#		if Autoload.WRONG_BUGS:
#			pass
