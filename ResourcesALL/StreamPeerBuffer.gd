extends Node2D

var q_StreamPeerBuffer : StreamPeerBuffer = StreamPeerBuffer.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_StreamPeerBuffer = StreamPeerBuffer.new()

		if randi() % 2 == 1:
			q_StreamPeerBuffer.set_data_array(Autoload.get_poolbytearray())

		if randi() % 2 == 1:
			q_StreamPeerBuffer.clear()
		if randi() % 2 == 1:
			Autoload.qq = str(q_StreamPeerBuffer.duplicate())

		if randi() % 2 == 1:
			Autoload.qq = str(q_StreamPeerBuffer.get_position())
		if randi() % 2 == 1:
			Autoload.qq = str(q_StreamPeerBuffer.get_size())

		if randi() % 2 == 1:
			q_StreamPeerBuffer.resize( Autoload.get_int())
		if randi() % 2 == 1:
			q_StreamPeerBuffer.seek( Autoload.get_int() )
