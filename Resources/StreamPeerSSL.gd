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
		
		var q_StreamPeerSSL : StreamPeerSSL = StreamPeerSSL.new()
		
		q_StreamPeerSSL.set_blocking_handshake_enabled(bool(randi()%2))
		
		#qq += str(q_StreamPeerSSL.accept_stream( StreamPeer.new() ))
		#BUG qq += str(q_StreamPeerSSL.connect_to_stream( StreamPeer.new(), bool(randi()%2), "Komputery" ))
		q_StreamPeerSSL.disconnect_from_stream()
		qq += str(q_StreamPeerSSL.get_status())
		#q_StreamPeerSSL.poll()
		
		if Autoload.WRONG_BUGS:
			pass
