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
		
		var q_SceneTree : SceneTree = SceneTree.new()
		
		q_SceneTree.set_debug_collisions_hint(bool(randi()%2))
		q_SceneTree.set_debug_navigation_hint(bool(randi()%2))
		q_SceneTree.set_pause(true)
		q_SceneTree.set_pause(false)
		q_SceneTree.set_refuse_new_network_connections(bool(randi()%2))
		q_SceneTree.set_use_font_oversampling(bool(randi()%2))
		q_SceneTree.set_edited_scene_root(Node.new())
		q_SceneTree.set_current_scene(Node.new())
		q_SceneTree.set_network_peer(NetworkedMultiplayerPeer.new())
		qq += str(q_SceneTree.get_root())
		q_SceneTree.set_multiplayer(MultiplayerAPI.new())
		q_SceneTree.set_multiplayer_poll_enabled(bool(randi()%2))
		
		q_SceneTree.call_group( "Żółć", "Wanna", "Kasza" )
		q_SceneTree.call_group_flags( randi() % 8, "Żółć", "Klucze", "Roman")#GroupCallFlags
		
		### q_SceneTree.change_scene( String path )
		### q_SceneTree.change_scene_to( PackedScene packed_scene )
		
		qq += str(q_SceneTree.create_timer( randf() * 50, bool(randi()%2)))
		
		qq += str(q_SceneTree.get_frame())
		qq += str(q_SceneTree.get_network_connected_peers())
		qq += str(q_SceneTree.get_network_unique_id())
		qq += str(q_SceneTree.get_node_count())
		qq += str(q_SceneTree.get_nodes_in_group( "Żółć" ))
		qq += str(q_SceneTree.get_rpc_sender_id())
		
		qq += str(q_SceneTree.has_group( "Konewka"))
		qq += str(q_SceneTree.has_network_peer())
		
		qq += str(q_SceneTree.is_input_handled())
		qq += str(q_SceneTree.is_network_server())
		
		q_SceneTree.notify_group( "Żółć", bool(randi()%2))
		q_SceneTree.notify_group_flags( randi() % 8, "Żółć", bool(randi()%2)) #GroupCallFlags
		
		q_SceneTree.queue_delete( Node.new() )
		### q_SceneTree.quit()
		qq += str(q_SceneTree.reload_current_scene())
		
		q_SceneTree.set_auto_accept_quit( bool(randi()%2))
		q_SceneTree.set_group( "Żółć", "Źrebię", bool(randi()%2))
		q_SceneTree.set_group_flags( randi() % 8, "Żółć", "Źrebię", bool(randi()%2)) # GroupCallFlags
		q_SceneTree.set_input_as_handled()
		q_SceneTree.set_quit_on_go_back( bool(randi()%2))
		q_SceneTree.set_screen_stretch( randi() % 3, randi() %5, Vector2(randf() * 50,randf() * 50), randf() * 50 )#StretchMode, StretchAspect
		
		if Autoload.WRONG_BUGS:
			pass
