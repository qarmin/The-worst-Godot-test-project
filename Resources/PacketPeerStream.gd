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
		
		var q_PacketPeerStream : PacketPeerStream = PacketPeerStream.new()
		
		q_PacketPeerStream.set_input_buffer_max_size(randi()%50)
		q_PacketPeerStream.set_output_buffer_max_size(randi()%50)
		#q_PacketPeerStream.set_stream_peer(StreamPeer.new())
		
		if Autoload.WRONG_BUGS:
			q_PacketPeerStream.set_input_buffer_max_size(randi() % 1000 - 500)
			q_PacketPeerStream.set_output_buffer_max_size(randi() % 1000 - 500)
			q_PacketPeerStream.set_stream_peer(StreamPeer.new())
