extends Node2D

var q_NetworkedMultiplayerENet : NetworkedMultiplayerENet = NetworkedMultiplayerENet.new()
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
			q_NetworkedMultiplayerENet = NetworkedMultiplayerENet.new()
		
		
		if randi() % 2 == 1:
			q_NetworkedMultiplayerENet.set_compression_mode(Autoload.get_int()) #CompressionMode
		if randi() % 2 == 1:
			q_NetworkedMultiplayerENet.set_transfer_channel(Autoload.get_int())
		if randi() % 2 == 1:
			q_NetworkedMultiplayerENet.set_channel_count(Autoload.get_int())
		if randi() % 2 == 1:
			q_NetworkedMultiplayerENet.set_always_ordered(Autoload.get_bool())
	
		if randi() % 2 == 1:
			q_NetworkedMultiplayerENet.close_connection( Autoload.get_int())
	
#		if randi() % 2 == 1:
#	LEAK		qq += str(q_NetworkedMultiplayerENet.create_client(Autoload.get_string(),Autoload.get_int(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int() ))
		if randi() % 2 == 1:
			qq += str(q_NetworkedMultiplayerENet.create_server( Autoload.get_int(),Autoload.get_int(), Autoload.get_int(), Autoload.get_int()))
	
		if randi() % 2 == 1:
			q_NetworkedMultiplayerENet.disconnect_peer( Autoload.get_int(), Autoload.get_bool())
	
		if randi() % 2 == 1:
			qq += str(q_NetworkedMultiplayerENet.get_last_packet_channel())
		if randi() % 2 == 1:
			qq += str(q_NetworkedMultiplayerENet.get_packet_channel())
		if randi() % 2 == 1:
			qq += str(q_NetworkedMultiplayerENet.get_peer_address( Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(q_NetworkedMultiplayerENet.get_peer_port( Autoload.get_int()))
	
		if randi() % 2 == 1:
			q_NetworkedMultiplayerENet.set_bind_ip( Autoload.get_string())
