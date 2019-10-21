extends Node2D

onready var counter : float = Autoload.get_rand_time()

#
#
#
#func alt_process(delta) -> void:
#	counter -= delta
#
#
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#
#		var q_SceneTree : SceneTree = SceneTree.new()
#
#		q_SceneTree.set_debug_collisions_hint(Autoload.get_bool())
#		q_SceneTree.set_debug_navigation_hint(Autoload.get_bool())
#		q_SceneTree.set_pause(true)
#		q_SceneTree.set_pause(false)
#		#q_SceneTree.set_refuse_new_network_connections(Autoload.get_bool())
#		q_SceneTree.set_use_font_oversampling(Autoload.get_bool())
##		var q_temp : Node = load("res://RES/Node.tscn").instance()
##		q_SceneTree.set_edited_scene_root(Node.new())
##		q_temp.queue_free()
#		#q_SceneTree.set_current_scene(Node.new())
#		#q_SceneTree.set_network_peer(NetworkedMultiplayerPeer.new())
#		q_SceneTree.get_root())
##		q_SceneTree.set_multiplayer(MultiplayerAPI.new())
#		q_SceneTree.set_multiplayer_poll_enabled(Autoload.get_bool())
#
#		q_SceneTree.call_group( Autoload.get_string(), Autoload.get_string(), Autoload.get_string())
#		q_SceneTree.call_group_flags( Autoload.get_int(), Autoload.get_string(), Autoload.get_string(), Autoload.get_string())#GroupCallFlags
#
#		### q_SceneTree.change_scene( String path )
#		### q_SceneTree.change_scene_to( PackedScene packed_scene )
#
#		q_SceneTree.create_timer( Autoload.get_float(), Autoload.get_bool()))
#
#		q_SceneTree.get_frame())
#		#q_SceneTree.get_network_connected_peers())
#		#q_SceneTree.get_network_unique_id())
#		q_SceneTree.get_node_count())
#		q_SceneTree.get_nodes_in_group( Autoload.get_string()))
#		q_SceneTree.get_rpc_sender_id())
#
#		q_SceneTree.has_group( Autoload.get_string()))
#		q_SceneTree.has_network_peer())
#
#		q_SceneTree.is_input_handled())
#		#q_SceneTree.is_network_server())
#
#		q_SceneTree.notify_group( Autoload.get_string(), Autoload.get_bool())
#		q_SceneTree.notify_group_flags( Autoload.get_int(), Autoload.get_string(), Autoload.get_bool()) #GroupCallFlags
#
##		q_temp = load("res://RES/Node.tscn").instance()
##		q_SceneTree.queue_delete( Node.new())
##		q_temp.queue_free()
#		### q_SceneTree.quit()
#		#q_SceneTree.reload_current_scene())
#
#		q_SceneTree.set_auto_accept_quit( Autoload.get_bool())
#		q_SceneTree.set_group( Autoload.get_string(), Autoload.get_string(), Autoload.get_bool())
#		q_SceneTree.set_group_flags( Autoload.get_int(), Autoload.get_string(), Autoload.get_string(), Autoload.get_bool()) # GroupCallFlags
#		q_SceneTree.set_input_as_handled()
#		q_SceneTree.set_quit_on_go_back( Autoload.get_bool())
#		#q_SceneTree.set_screen_stretch( Autoload.get_int(), Autoload.get_int(), Autoload.get_vector2(), Autoload.get_float())#StretchMode, StretchAspect
#
#		q_SceneTree.queue_delete(self)
#
