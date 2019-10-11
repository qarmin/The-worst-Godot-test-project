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
		var q_WebRTCPeerConnection : WebRTCPeerConnection = WebRTCPeerConnection.new()
		
		if randi() % 2 == 1:
			qq += str(q_WebRTCPeerConnection.add_ice_candidate( "Rozciągnięcie", Autoload.get_randi(), "Kropierz" ))
		if randi() % 2 == 1:
			q_WebRTCPeerConnection.close()
	
		if randi() % 2 == 1:
			qq += str(q_WebRTCPeerConnection.create_data_channel("Marko Polo", {"Bułat":"Czeka"}))
	
		if randi() % 2 == 1:
			qq += str(q_WebRTCPeerConnection.create_offer())
	
		if randi() % 2 == 1:
			qq += str(q_WebRTCPeerConnection.get_connection_state())
		if randi() % 2 == 1:
			qq += str(q_WebRTCPeerConnection.initialize( {"Śmieszno":"Jednak Nie"}))
	
		if randi() % 2 == 1:
			qq += str(q_WebRTCPeerConnection.poll())
	
		if randi() % 2 == 1:
			qq += str(q_WebRTCPeerConnection.set_local_description( "Osiem", "Ramię" ))
		if randi() % 2 == 1:
			qq += str(q_WebRTCPeerConnection.set_remote_description( "Osiem", "Ramię" ))
