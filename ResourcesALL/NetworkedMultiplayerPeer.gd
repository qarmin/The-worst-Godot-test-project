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
#		var q_NetworkedMultiplayerPeer : NetworkedMultiplayerPeer = NetworkedMultiplayerPeer.new()
#
#		q_NetworkedMultiplayerPeer.set_refuse_new_connections(Autoload.get_bool())
#		q_NetworkedMultiplayerPeer.set_transfer_mode(Autoload.get_int()) #TransferMode
#
#		q_NetworkedMultiplayerPeer.get_connection_status()
#		q_NetworkedMultiplayerPeer.get_packet_peer()
#		q_NetworkedMultiplayerPeer.get_unique_id()
#		q_NetworkedMultiplayerPeer.poll()
#		q_NetworkedMultiplayerPeer.set_target_peer( Autoload.get_int() )
#
