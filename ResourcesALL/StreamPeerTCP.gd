extends Node2D

var q_StreamPeerTCP : StreamPeerTCP = StreamPeerTCP.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_StreamPeerTCP,true)

func nodeFunction(q_StreamPeerTCP : StreamPeerTCP, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_StreamPeerTCP = StreamPeerTCP.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_StreamPeerTCP)

		if randi() % 2 == 1:
			q_StreamPeerTCP.connect_to_host( Autoload.get_string(), Autoload.get_int())
		if randi() % 2 == 1:
			q_StreamPeerTCP.disconnect_from_host()

		if randi() % 2 == 1:
			q_StreamPeerTCP.get_connected_host()
		if randi() % 2 == 1:
			q_StreamPeerTCP.get_connected_port()
		if randi() % 2 == 1:
			q_StreamPeerTCP.get_status()

		if randi() % 2 == 1:
			q_StreamPeerTCP.is_connected_to_host()
		if randi() % 2 == 1:
			q_StreamPeerTCP.set_no_delay( Autoload.get_bool())
