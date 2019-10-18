extends Node2D

var q_StreamPeerSSL : StreamPeerSSL = StreamPeerSSL.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_StreamPeerSSL = StreamPeerSSL.new()

#		if randi() % 2 == 1:
#	SPAM		Autoload.qq = str(q_StreamPeerSSL.accept_stream( StreamPeerTCP.new(),Autoload.loadA("CryptoKey.tres"),X509Certificate.new(),X509Certificate.new()))
#		if randi() % 2 == 1:
#	SPAM		Autoload.qq = str(q_StreamPeerSSL.connect_to_stream( StreamPeerTCP.new(), Autoload.get_bool(), Autoload.get_string() ))
		if randi() % 2 == 1:
			q_StreamPeerSSL.disconnect_from_stream()
		if randi() % 2 == 1:
			Autoload.qq = str(q_StreamPeerSSL.get_status())
		if randi() % 2 == 1:
			q_StreamPeerSSL.poll()
