extends Node2D

var q_PacketPeer: PacketPeer = NetworkedMultiplayerENet.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_PacketPeer, true)


func nodeFunction(q_PacketPeer: PacketPeer, can_reset: bool = false) -> void:
#	if can_reset:
#		if randi() % 2 == 1:
#			q_PacketPeer = PacketPeer.new()
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_PacketPeer)

#BUG
#	if randi() % 2 == 1:
#		q_PacketPeer.set_allow_object_decoding(Autoload.get_bool())
#
#	if randi() % 2 == 1:
#		q_PacketPeer.get_available_packet_count()
#	if randi() % 2 == 1:
#		q_PacketPeer.get_packet()
#	if randi() % 2 == 1:
#		q_PacketPeer.get_packet_error()
#	if randi() % 2 == 1:
#		q_PacketPeer.get_var( Autoload.get_bool())
#
#	if randi() % 2 == 1:
#		q_PacketPeer.put_packet( Autoload.get_packedbytearray())
#	if randi() % 2 == 1:
#		q_PacketPeer.put_var(Autoload.get_string(), Autoload.get_bool())
