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
		
		var q_PacketPeerUDP : PacketPeerUDP = PacketPeerUDP.new()
		
		q_PacketPeerUDP.close()
		
		qq += str(q_PacketPeerUDP.get_packet_ip())
		qq += str(q_PacketPeerUDP.get_packet_port())
		
		qq += str(q_PacketPeerUDP.is_listening())
		#qq += str(q_PacketPeerUDP.join_multicast_group( "Strzał", "Wycofanie" ))
		#qq += str(q_PacketPeerUDP.leave_multicast_group( "Strzał", "Wycofanie" ))
		#qq += str(q_PacketPeerUDP.listen( 0, "Gol", randi()%50))
		#qq += str(q_PacketPeerUDP.set_dest_address( "Pestka", 0 ))
		#qq += str(q_PacketPeerUDP.wait())
		
		if Autoload.WRONG_BUGS:
			pass
