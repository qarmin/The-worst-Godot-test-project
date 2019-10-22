extends Node2D

var q_NetworkedMultiplayerPeer : NetworkedMultiplayerPeer = WebRTCMultiplayer.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_NetworkedMultiplayerPeer,true)

func nodeFunction(q_NetworkedMultiplayerPeer : NetworkedMultiplayerPeer, can_reset : bool = false) -> void:
	
#	if can_reset:
#		if randi() % 2 == 1:
#			q_NetworkedMultiplayerPeer = NetworkedMultiplayerPeer.new()
	if randi() % 2 == 1:
		AutoResourcesPacketPeer.nodeFunction(q_NetworkedMultiplayerPeer)

		

	if randi() % 2 == 1:
		q_NetworkedMultiplayerPeer.set_refuse_new_connections(Autoload.get_bool())
	if randi() % 2 == 1:
		q_NetworkedMultiplayerPeer.set_transfer_mode(Autoload.get_int()) #TransferMode

	if randi() % 2 == 1:
		q_NetworkedMultiplayerPeer.get_connection_status()
#	if randi() % 2 == 1: #BUG
#		q_NetworkedMultiplayerPeer.get_packet_peer()
	if randi() % 2 == 1:
		q_NetworkedMultiplayerPeer.get_unique_id()
	if randi() % 2 == 1:
		q_NetworkedMultiplayerPeer.poll()
	if randi() % 2 == 1:
		q_NetworkedMultiplayerPeer.set_target_peer( Autoload.get_int())

