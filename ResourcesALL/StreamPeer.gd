extends Node2D

var q_StreamPeer : StreamPeer = StreamPeerBuffer.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_StreamPeer,true)

func nodeFunction(q_StreamPeer : StreamPeer, can_reset : bool = false) -> void:
	
#	if can_reset:
#		if randi() % 2 == 1:
#			q_StreamPeer = StreamPeer.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_StreamPeer)



	if randi() % 2 == 1:
		q_StreamPeer.set_big_endian(Autoload.get_bool())
	
	if Autoload.SLOW_FUNCTIONS:
		if randi() % 2 == 1:
			q_StreamPeer.get_16()
		if randi() % 2 == 1:
			q_StreamPeer.get_32()
		if randi() % 2 == 1:
			q_StreamPeer.get_64()
		if randi() % 2 == 1:
			q_StreamPeer.get_8()
		if randi() % 2 == 1:
			q_StreamPeer.get_available_bytes()
		if randi() % 2 == 1:
			q_StreamPeer.get_data( Autoload.get_int())
		if randi() % 2 == 1:
			q_StreamPeer.get_double()
		if randi() % 2 == 1:
			q_StreamPeer.get_float()
		if randi() % 2 == 1:
			q_StreamPeer.get_partial_data( Autoload.get_int())
		if randi() % 2 == 1:
			q_StreamPeer.get_string( Autoload.get_int())
		if randi() % 2 == 1:
			q_StreamPeer.get_u16()
		if randi() % 2 == 1:
			q_StreamPeer.get_u32()
		if randi() % 2 == 1:
			q_StreamPeer.get_u64()
		if randi() % 2 == 1:
			q_StreamPeer.get_u8()
		if randi() % 2 == 1:
			q_StreamPeer.get_utf8_string( Autoload.get_int())
		if randi() % 2 == 1:
			q_StreamPeer.get_var( Autoload.get_bool())

# BUG NEW
#	if randi() % 2 == 1:
#		q_StreamPeer.put_16(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_StreamPeer.put_32(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_StreamPeer.put_64(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_StreamPeer.put_8(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_StreamPeer.put_data( Autoload.get_poolbytearray())
#	if randi() % 2 == 1:
#		q_StreamPeer.put_double(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_StreamPeer.put_float(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_StreamPeer.put_partial_data( Autoload.get_poolbytearray())
#	if randi() % 2 == 1:
#		q_StreamPeer.put_string( Autoload.get_string())
#	if randi() % 2 == 1:
#		q_StreamPeer.put_u16(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_StreamPeer.put_u32(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_StreamPeer.put_u64(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_StreamPeer.put_u8(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_StreamPeer.put_utf8_string( Autoload.get_string())
#	if randi() % 2 == 1:
#		q_StreamPeer.put_var(Autoload.get_bool())

