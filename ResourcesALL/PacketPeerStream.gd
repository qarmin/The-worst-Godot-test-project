extends Node2D

var q_PacketPeerStream : PacketPeerStream = PacketPeerStream.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_PacketPeerStream,true)

func nodeFunction(q_PacketPeerStream : PacketPeerStream, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_PacketPeerStream = PacketPeerStream.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_PacketPeerStream)

	if randi() % 2 == 1:
		q_PacketPeerStream.set_input_buffer_max_size(Autoload.get_int())
	if randi() % 2 == 1:
		q_PacketPeerStream.set_output_buffer_max_size(Autoload.get_int())
	if randi() % 2 == 1:
		q_PacketPeerStream.set_stream_peer(StreamPeer.new())
