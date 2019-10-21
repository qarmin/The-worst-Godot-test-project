extends Node2D

var q_PoolByteArray : PoolByteArray = Autoload.get_poolbytearray()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

#
#		if randi() % 2 == 1:
#			q_PoolByteArray = Autoload.get_poolbytearray()
#
#		if randi() % 2 == 1:
#			q_PoolByteArray.append(Autoload.get_int())
#		if randi() % 2 == 1:
#			q_PoolByteArray.append_array(Autoload.get_poolbytearray())
#
#		if randi() % 2 == 1:
#			q_PoolByteArray.compress(Autoload.get_int())) # File.CompressionMode
##	BUG	if randi() % 2 == 1:
##			q_PoolByteArray.decompress(Autoload.get_int(),Autoload.get_int()))
#
#		if randi() % 2 == 1:
#			q_PoolByteArray.get_string_from_ascii())
#		if randi() % 2 == 1:
#			q_PoolByteArray.get_string_from_utf8())
#
#
#		if randi() % 2 == 1:
#			q_PoolByteArray.hex_encode())
#		if randi() % 2 == 1:
#			q_PoolByteArray.insert( Autoload.get_int(), Autoload.get_int()))
#		if randi() % 2 == 1:
#			q_PoolByteArray.invert()
#		if randi() % 2 == 1:
#			q_PoolByteArray.push_back( Autoload.get_int())
#		if randi() % 2 == 1:
#			q_PoolByteArray.remove( Autoload.get_int())
#		if randi() % 2 == 1:
#			q_PoolByteArray.resize( Autoload.get_int())
#		if randi() % 2 == 1:
#			q_PoolByteArray.set(Autoload.get_int(), Autoload.get_int())
#		if randi() % 2 == 1:
#			q_PoolByteArray.size())
#		if randi() % 2 == 1:
#			q_PoolByteArray.subarray(Autoload.get_int(),Autoload.get_int()))
