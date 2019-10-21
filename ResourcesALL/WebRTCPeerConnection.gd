extends Node2D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		var q_WebRTCPeerConnection : WebRTCPeerConnection = WebRTCPeerConnection.new()

		if randi() % 2 == 1:
			q_WebRTCPeerConnection.add_ice_candidate( Autoload.get_string(), Autoload.get_int(), Autoload.get_string()))
		if randi() % 2 == 1:
			q_WebRTCPeerConnection.close()

		if randi() % 2 == 1:
			q_WebRTCPeerConnection.create_data_channel(Autoload.get_string(), {Autoload.get_string() : Autoload.get_string()}))

		if randi() % 2 == 1:
			q_WebRTCPeerConnection.create_offer())

		if randi() % 2 == 1:
			q_WebRTCPeerConnection.get_connection_state())
		if randi() % 2 == 1:
			q_WebRTCPeerConnection.initialize( Autoload.get_dictionary()))

		if randi() % 2 == 1:
			q_WebRTCPeerConnection.poll())

		if randi() % 2 == 1:
			q_WebRTCPeerConnection.set_local_description( Autoload.get_string(), Autoload.get_string()))
		if randi() % 2 == 1:
			q_WebRTCPeerConnection.set_remote_description( Autoload.get_string(), Autoload.get_string()))
