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
		
		var q_MultiplayerAPI : MultiplayerAPI = MultiplayerAPI.new()
		
		q_MultiplayerAPI.set_allow_object_decoding(bool(randi()%2))
		#q_MultiplayerAPI.set_refuse_new_network_connections(bool(randi()%2))
		#q_MultiplayerAPI.set_network_peer(NetworkedMultiplayerPeer.new())
		
		q_MultiplayerAPI.clear()
		
		#qq += str(q_MultiplayerAPI.get_network_connected_peers())
		#qq += str(q_MultiplayerAPI.get_network_unique_id())
		qq += str(q_MultiplayerAPI.get_rpc_sender_id())
		
		qq += str(q_MultiplayerAPI.has_network_peer())
		#qq += str(q_MultiplayerAPI.is_network_server())
		q_MultiplayerAPI.poll()
		#qq += str(q_MultiplayerAPI.send_bytes( PoolByteArray([11,124,1241,24,21,214,12,11]), randi()%50, randi() % 3 ))#TransferNode
		var q_temp : Node = load("res://RES/Node.tscn").instance()
		q_MultiplayerAPI.set_root_node( q_temp )
		q_temp.queue_free()
		
		if Autoload.WRONG_BUGS:
			q_MultiplayerAPI.set_allow_object_decoding(bool(randi()%2))
			q_MultiplayerAPI.set_refuse_new_network_connections(bool(randi()%2))
			q_MultiplayerAPI.set_network_peer(NetworkedMultiplayerPeer.new())
			
			q_MultiplayerAPI.clear()
			
			qq += str(q_MultiplayerAPI.get_network_connected_peers())
			qq += str(q_MultiplayerAPI.get_network_unique_id())
			qq += str(q_MultiplayerAPI.get_rpc_sender_id())
			
			qq += str(q_MultiplayerAPI.has_network_peer())
			qq += str(q_MultiplayerAPI.is_network_server())
			q_MultiplayerAPI.poll()
			qq += str(q_MultiplayerAPI.send_bytes( PoolByteArray([11,124,1241,24,21,214,12,11]), randi() % 1000 - 500, randi() % 1000 - 500 ))#TransferNode
			var q_temp0 : Node = load("res://RES/Node.tscn").instance()
			q_MultiplayerAPI.set_root_node( q_temp0 )
			q_temp0.queue_free()
