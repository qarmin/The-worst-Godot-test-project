extends Node2D

onready var counter : float = Autoload.get_rand_time()

#
#
#
#func _process(delta) -> void:
#	counter -= delta
#
#
#
#	if counter <= 0:
		counter = Autoload.get_rand_time()
#
#
#		var q_SceneState : SceneState = SceneState.new()
#
#		q_SceneState.get_connection_binds( Autoload.get_int() )
#		q_SceneState.get_connection_count()
#		q_SceneState.get_connection_flags( Autoload.get_int() )
#		q_SceneState.get_connection_method( Autoload.get_int() )
#		q_SceneState.get_connection_signal( Autoload.get_int() )
#		q_SceneState.get_connection_source( Autoload.get_int() )
#		q_SceneState.get_connection_target( Autoload.get_int() )
#		q_SceneState.get_node_count()
#		q_SceneState.get_node_groups( Autoload.get_int() )
#		q_SceneState.get_node_index( Autoload.get_int() )
#		q_SceneState.get_node_instance( Autoload.get_int() )
#		q_SceneState.get_node_instance_placeholder( Autoload.get_int() )
#		q_SceneState.get_node_name( Autoload.get_int() )
#		q_SceneState.get_node_owner_path( Autoload.get_int() )
#		q_SceneState.get_node_path( 0, Autoload.get_bool())
#		q_SceneState.get_node_property_count( Autoload.get_int() )
#		q_SceneState.get_node_property_name( 0, 0 )
#		q_SceneState.get_node_property_value( 0, 0 )
#		q_SceneState.get_node_type( Autoload.get_int() )
#
#		q_SceneState.is_node_instance_placeholder( Autoload.get_int() )
#
