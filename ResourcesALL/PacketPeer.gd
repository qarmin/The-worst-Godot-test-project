extends Node2D

onready var counter : float = Autoload.get_rand_time()

#
#
#
func alt_process(delta) -> void:
	pass
#	counter -= delta
#
#
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#
#		var q_PacketPeer : PacketPeer = PacketPeer.new()
#
#		q_PacketPeer.set_allow_object_decoding(Autoload.get_bool())
#
#		q_PacketPeer.get_available_packet_count())
#		q_PacketPeer.get_packet())
#		q_PacketPeer.get_packet_error())
#		q_PacketPeer.get_var( Autoload.get_bool()))
#
#		q_PacketPeer.put_packet( Autoload.get_poolbytearray()))
#		q_PacketPeer.put_var(Autoload.get_string(), Autoload.get_bool()))
#
