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
		
		#var q_NetworkedMultiplayerENet : NetworkedMultiplayerENet = NetworkedMultiplayerENet.new()
		
		#q_NetworkedMultiplayerENet.set_compression_mode(randi() % 5) #CompressionMode
		#q_NetworkedMultiplayerENet.set_transfer_channel(randi()%50)
		#q_NetworkedMultiplayerENet.set_channel_count(randi()%50)
		#q_NetworkedMultiplayerENet.set_always_ordered(bool(randi()%2))
		
		#q_NetworkedMultiplayerENet.close_connection( randi()%50)
		
		#qq += str(q_NetworkedMultiplayerENet.create_client("Stabilnie", 0, randi()%50, randi()%50, 0 ))
		#qq += str(q_NetworkedMultiplayerENet.create_server( randi()%50, 0, randi()%50, randi()%50))
		
		#q_NetworkedMultiplayerENet.disconnect_peer( 0, bool(randi()%2))
		
		#qq += str(q_NetworkedMultiplayerENet.get_last_packet_channel())
		#qq += str(q_NetworkedMultiplayerENet.get_packet_channel())
		#qq += str(q_NetworkedMultiplayerENet.get_peer_address( 0))
		#qq += str(q_NetworkedMultiplayerENet.get_peer_port( 0))
		
		#q_NetworkedMultiplayerENet.set_bind_ip( "Koszulka")
		
#		if Autoload.WRONG_BUGS:
#			var q_NetworkedMultiplayerENet : NetworkedMultiplayerENet = NetworkedMultiplayerENet.new()
#			q_NetworkedMultiplayerENet.set_compression_mode(randi() % 10 - 5) #CompressionMode
#			q_NetworkedMultiplayerENet.set_transfer_channel(randi() % 10 - 5)
#			q_NetworkedMultiplayerENet.set_channel_count(randi() % 10 - 5)
#			q_NetworkedMultiplayerENet.set_always_ordered(bool(randi()%2))
#
#			q_NetworkedMultiplayerENet.close_connection( randi() % 10 - 5)
#
#			qq += str(q_NetworkedMultiplayerENet.create_client("Stabilnie",randi() % 10 - 5, randi() % 10 - 5, randi() % 10 - 5, randi() % 10 - 5 ))
#			qq += str(q_NetworkedMultiplayerENet.create_server( randi() % 10 - 5,randi() % 10 - 5, randi() % 10 - 5, randi() % 10 - 5))
#
#			q_NetworkedMultiplayerENet.disconnect_peer( randi() % 10 - 5, bool(randi()%2))
#
#			qq += str(q_NetworkedMultiplayerENet.get_last_packet_channel())
#			qq += str(q_NetworkedMultiplayerENet.get_packet_channel())
##			qq += str(q_NetworkedMultiplayerENet.get_peer_address( randi() % 10 - 5))
##			qq += str(q_NetworkedMultiplayerENet.get_peer_port( randi() % 10 - 5))
##
##			q_NetworkedMultiplayerENet.set_bind_ip( "Koszulka")
