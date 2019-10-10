extends Node2D

var q_PacketPeerUDP : PacketPeerUDP = PacketPeerUDP.new()
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
			q_PacketPeerUDP = PacketPeerUDP.new()
			
		
		if randi() % 2 == 1:
			q_PacketPeerUDP.close()
			
		if randi() % 2 == 1:
			qq += str(q_PacketPeerUDP.get_packet_ip())
		if randi() % 2 == 1:
			qq += str(q_PacketPeerUDP.get_packet_port())
			
		if randi() % 2 == 1:
			qq += str(q_PacketPeerUDP.is_listening())
		if randi() % 2 == 1:
			qq += str(q_PacketPeerUDP.join_multicast_group( "Strzał", "Wycofanie" ))
		if randi() % 2 == 1:
			qq += str(q_PacketPeerUDP.leave_multicast_group( "Strzał", "Wycofanie" ))
		if randi() % 2 == 1:
			qq += str(q_PacketPeerUDP.listen( randi() % Autoload.RANGE - Autoload.RANGE / 2, "Gol", randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(q_PacketPeerUDP.set_dest_address( "Pestka",randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(q_PacketPeerUDP.wait())
