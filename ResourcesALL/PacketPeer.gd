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
#		var q_PacketPeer : PacketPeer = PacketPeer.new()
#
#		q_PacketPeer.set_allow_object_decoding(Autoload.get_bool())
#
#		Autoload.qq = str(q_PacketPeer.get_available_packet_count())
#		Autoload.qq = str(q_PacketPeer.get_packet())
#		Autoload.qq = str(q_PacketPeer.get_packet_error())
#		Autoload.qq = str(q_PacketPeer.get_var( Autoload.get_bool()))
#
#		Autoload.qq = str(q_PacketPeer.put_packet( Autoload.get_poolbytearray()))
#		Autoload.qq = str(q_PacketPeer.put_var(Autoload.get_string(), Autoload.get_bool()))
#
