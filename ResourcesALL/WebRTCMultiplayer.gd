extends Node2D

var q_WebRTCMultiplayer : WebRTCMultiplayer = WebRTCMultiplayer.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_WebRTCMultiplayer,true)

func nodeFunction(q_WebRTCMultiplayer : WebRTCMultiplayer, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_WebRTCMultiplayer = WebRTCMultiplayer.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_WebRTCMultiplayer)

	if randi() % 2 == 1:
		q_WebRTCMultiplayer.add_peer( WebRTCPeerConnection.new(), Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_WebRTCMultiplayer.close()

	if randi() % 2 == 1:
		q_WebRTCMultiplayer.get_peer( Autoload.get_int())
	if randi() % 2 == 1:
		q_WebRTCMultiplayer.get_peers()

	if randi() % 2 == 1:
		q_WebRTCMultiplayer.has_peer( Autoload.get_int())
	if randi() % 2 == 1:
		q_WebRTCMultiplayer.initialize( Autoload.get_int(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_WebRTCMultiplayer.remove_peer( Autoload.get_int())
