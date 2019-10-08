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
		if !Autoload.RANDI:
		
#
#			qq += str(q_WebRTCPeerConnection.add_ice_candidate( "Rozciągnięcie", randi()%50, "Kropierz" ))
#			q_WebRTCPeerConnection.close()
#
#			qq += str(q_WebRTCPeerConnection.create_data_channel("Marko Polo", {"Bułat":"Czeka"}))
#
#			qq += str(q_WebRTCPeerConnection.create_offer())
#
#			qq += str(q_WebRTCPeerConnection.get_connection_state())
#			qq += str(q_WebRTCPeerConnection.initialize( {"Śmieszno":"Jednak NIe"}))
#
#			qq += str(q_WebRTCPeerConnection.poll())
#
#			qq += str(q_WebRTCPeerConnection.set_local_description( "Osiem", "Ramię" ))
#			qq += str(q_WebRTCPeerConnection.set_remote_description( "Osiem", "Ramię" ))
			
			if Autoload.WRONG_BUGS:
				var q_WebRTCPeerConnection : WebRTCPeerConnection = WebRTCPeerConnection.new()
				qq += str(q_WebRTCPeerConnection.add_ice_candidate( "Rozciągnięcie", randi() % Autoload.RANGE - Autoload.RANGE / 2, "Kropierz" ))
				q_WebRTCPeerConnection.close()
		
				qq += str(q_WebRTCPeerConnection.create_data_channel("Marko Polo", {"Bułat":"Czeka"}))
		
				qq += str(q_WebRTCPeerConnection.create_offer())
		
				qq += str(q_WebRTCPeerConnection.get_connection_state())
				qq += str(q_WebRTCPeerConnection.initialize( {"Śmieszno":"Jednak Nie"}))
		
				qq += str(q_WebRTCPeerConnection.poll())
		
				qq += str(q_WebRTCPeerConnection.set_local_description( "Osiem", "Ramię" ))
				qq += str(q_WebRTCPeerConnection.set_remote_description( "Osiem", "Ramię" ))
