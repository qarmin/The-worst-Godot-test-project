extends Node2D

var q_PacketPeerUDP : PacketPeerUDP = PacketPeerUDP.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_PacketPeerUDP = PacketPeerUDP.new()

		if randi() % 2 == 1:
			q_PacketPeerUDP.close()

		if randi() % 2 == 1:
			Autoload.qq = str(q_PacketPeerUDP.get_packet_ip())
		if randi() % 2 == 1:
			Autoload.qq = str(q_PacketPeerUDP.get_packet_port())

		if randi() % 2 == 1:
			Autoload.qq = str(q_PacketPeerUDP.is_listening())
		if randi() % 2 == 1:
			Autoload.qq = str(q_PacketPeerUDP.join_multicast_group( Autoload.get_string(), Autoload.get_string() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_PacketPeerUDP.leave_multicast_group( Autoload.get_string(), Autoload.get_string() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_PacketPeerUDP.listen( Autoload.get_int(), Autoload.get_string(), Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(q_PacketPeerUDP.set_dest_address( Autoload.get_string(),Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(q_PacketPeerUDP.wait())
