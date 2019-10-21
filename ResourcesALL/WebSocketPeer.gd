extends Node2D

var q_WebSocketPeer : WebSocketPeer = WebSocketPeer.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_WebSocketPeer = WebSocketPeer.new()

		if randi() % 2 == 1:
			q_WebSocketPeer.get_connected_host())
		if randi() % 2 == 1:
			q_WebSocketPeer.get_connected_port())
		if randi() % 2 == 1:
			q_WebSocketPeer.get_write_mode())

		if randi() % 2 == 1:
			q_WebSocketPeer.is_connected_to_host())
		if randi() % 2 == 1:
			q_WebSocketPeer.set_write_mode( Autoload.get_int())#WriteMode
		if randi() % 2 == 1:
			q_WebSocketPeer.was_string_packet())
