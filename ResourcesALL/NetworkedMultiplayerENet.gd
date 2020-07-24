extends Node2D

var q_NetworkedMultiplayerENet: NetworkedMultiplayerENet = NetworkedMultiplayerENet.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_NetworkedMultiplayerENet, true)


func nodeFunction(q_NetworkedMultiplayerENet: NetworkedMultiplayerENet, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_NetworkedMultiplayerENet = NetworkedMultiplayerENet.new()
	if randi() % 2 == 1:
		AutoResourcesNetworkedMultiplayerPeer.nodeFunction(q_NetworkedMultiplayerENet)

	if randi() % 2 == 1:
		q_NetworkedMultiplayerENet.set_compression_mode(Autoload.get_int())  #CompressionMode
	if randi() % 2 == 1:
		q_NetworkedMultiplayerENet.set_transfer_channel(Autoload.get_int())
	if randi() % 2 == 1:
		q_NetworkedMultiplayerENet.set_channel_count(Autoload.get_int())
	if randi() % 2 == 1:
		q_NetworkedMultiplayerENet.set_always_ordered(Autoload.get_bool())

	if randi() % 2 == 1:
		q_NetworkedMultiplayerENet.close_connection(Autoload.get_int())

#	if randi() % 2 == 1:
#	LEAK	q_NetworkedMultiplayerENet.create_client(Autoload.get_string(),Autoload.get_int(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int()))
	if randi() % 2 == 1:
		q_NetworkedMultiplayerENet.create_server(Autoload.get_int(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int())

	if randi() % 2 == 1:
		q_NetworkedMultiplayerENet.disconnect_peer(Autoload.get_int(), Autoload.get_bool())

	if randi() % 2 == 1:
		q_NetworkedMultiplayerENet.get_last_packet_channel()
	if randi() % 2 == 1:
		q_NetworkedMultiplayerENet.get_packet_channel()
	if randi() % 2 == 1:
		q_NetworkedMultiplayerENet.get_peer_address(Autoload.get_int())
	if randi() % 2 == 1:
		q_NetworkedMultiplayerENet.get_peer_port(Autoload.get_int())

	if randi() % 2 == 1:
		q_NetworkedMultiplayerENet.set_bind_ip(Autoload.get_string())
