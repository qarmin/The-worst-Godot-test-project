extends Node2D

var q_StreamPeerSSL : StreamPeerSSL = StreamPeerSSL.new()
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
			q_StreamPeerSSL = StreamPeerSSL.new()
		
		
#		if randi() % 2 == 1:
#	SPAM		qq += str(q_StreamPeerSSL.accept_stream( StreamPeerTCP.new(),CryptoKey.new(),X509Certificate.new(),X509Certificate.new()))
#		if randi() % 2 == 1:
#	SPAM		qq += str(q_StreamPeerSSL.connect_to_stream( StreamPeerTCP.new(), bool(randi()%2), Autoload.get_string() ))
		if randi() % 2 == 1:
			q_StreamPeerSSL.disconnect_from_stream()
		if randi() % 2 == 1:
			qq += str(q_StreamPeerSSL.get_status())
		if randi() % 2 == 1:
			q_StreamPeerSSL.poll()
