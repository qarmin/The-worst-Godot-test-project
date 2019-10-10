extends Node2D

var q_MultiplayerAPI : MultiplayerAPI = MultiplayerAPI.new()
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
			q_MultiplayerAPI = MultiplayerAPI.new()
			
		
		var q_temp0 : Node = load("res://RES/Node.tscn").instance()
		if randi() % 2 == 1:
			q_MultiplayerAPI.set_allow_object_decoding(bool(randi()%2))
		if randi() % 2 == 1:
			q_MultiplayerAPI.set_refuse_new_network_connections(bool(randi()%2))
		if randi() % 2 == 1:
			q_MultiplayerAPI.set_network_peer(NetworkedMultiplayerPeer.new())
			
		if randi() % 2 == 1:
			q_MultiplayerAPI.clear()
			
		if randi() % 2 == 1:
			qq += str(q_MultiplayerAPI.get_network_connected_peers())
		if randi() % 2 == 1:
			qq += str(q_MultiplayerAPI.get_network_unique_id())
		if randi() % 2 == 1:
			qq += str(q_MultiplayerAPI.get_rpc_sender_id())
			
		if randi() % 2 == 1:
			qq += str(q_MultiplayerAPI.has_network_peer())
		if randi() % 2 == 1:
			qq += str(q_MultiplayerAPI.is_network_server())
		if randi() % 2 == 1:
			q_MultiplayerAPI.poll()
		if randi() % 2 == 1:
			qq += str(q_MultiplayerAPI.send_bytes( PoolByteArray([11,124,1241,24,21,214,12,11]), randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))#TransferNode
		if randi() % 2 == 1:
			q_MultiplayerAPI.set_root_node( q_temp0 )
			
		q_temp0.queue_free()
