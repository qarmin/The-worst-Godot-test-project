extends Node2D

var q_StreamPeerTCP : StreamPeerTCP = StreamPeerTCP.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_StreamPeerTCP = StreamPeerTCP.new()

		if randi() % 2 == 1:
			Autoload.qq = str(q_StreamPeerTCP.connect_to_host( Autoload.get_string(), Autoload.get_int() ))
		if randi() % 2 == 1:
			q_StreamPeerTCP.disconnect_from_host()

		if randi() % 2 == 1:
			Autoload.qq = str(q_StreamPeerTCP.get_connected_host())
		if randi() % 2 == 1:
			Autoload.qq = str(q_StreamPeerTCP.get_connected_port())
		if randi() % 2 == 1:
			Autoload.qq = str(q_StreamPeerTCP.get_status())

		if randi() % 2 == 1:
			Autoload.qq = str(q_StreamPeerTCP.is_connected_to_host())
		if randi() % 2 == 1:
			q_StreamPeerTCP.set_no_delay( Autoload.get_bool())
