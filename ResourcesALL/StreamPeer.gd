extends Node2D

onready var counter : float = Autoload.get_rand_time()

#
#
#
#func _process(delta) -> void:
#	counter -= delta
#
#
#
#	if counter <= 0:
		counter = Autoload.get_rand_time()
#
#
#		var q_StreamPeer : StreamPeer = StreamPeer.new()
#
#		q_StreamPeer.set_big_endian(Autoload.get_bool())
#
#		q_StreamPeer.get_16()
#		q_StreamPeer.get_32()
#		q_StreamPeer.get_64()
#		q_StreamPeer.get_8()
#		q_StreamPeer.get_available_bytes()
#		q_StreamPeer.get_data( Autoload.get_int() )
#		q_StreamPeer.get_double()
#		q_StreamPeer.get_float()
#		q_StreamPeer.get_partial_data( Autoload.get_int() )
#		q_StreamPeer.get_string( Autoload.get_int() )
#		q_StreamPeer.get_u16()
#		q_StreamPeer.get_u32()
#		q_StreamPeer.get_u64()
#		q_StreamPeer.get_u8()
#		q_StreamPeer.get_utf8_string( Autoload.get_int() )
#		q_StreamPeer.get_var( Autoload.get_bool())
#
#		q_StreamPeer.put_16(Autoload.get_int())
#		q_StreamPeer.put_32(Autoload.get_int())
#		q_StreamPeer.put_64(Autoload.get_int())
#		q_StreamPeer.put_8(Autoload.get_int())
#		q_StreamPeer.put_available_bytes()
#		q_StreamPeer.put_data( Autoload.get_poolbytearray() )
#		q_StreamPeer.put_double(Autoload.get_float())
#		q_StreamPeer.put_float(Autoload.get_float())
#		q_StreamPeer.put_partial_data( Autoload.get_poolbytearray() )
#		q_StreamPeer.put_string( Autoload.get_string() )
#		q_StreamPeer.put_u16(Autoload.get_int())
#		q_StreamPeer.put_u32(Autoload.get_int())
#		q_StreamPeer.put_u64(Autoload.get_int())
#		q_StreamPeer.put_u8(Autoload.get_int())
#		q_StreamPeer.put_utf8_string( Autoload.get_string() )
#		q_StreamPeer.put_var(Autoload.get_bool())
#
