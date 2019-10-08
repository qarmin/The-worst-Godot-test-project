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
		if !Autoload.RANDI:
			pass
		
#		var q_StreamPeer : StreamPeer = StreamPeer.new()
#
#		q_StreamPeer.set_big_endian(bool(randi()%2))
#
#		q_StreamPeer.get_16()
#		q_StreamPeer.get_32()
#		q_StreamPeer.get_64()
#		q_StreamPeer.get_8()
#		q_StreamPeer.get_available_bytes()
#		q_StreamPeer.get_data( randi()%50 )
#		q_StreamPeer.get_double()
#		q_StreamPeer.get_float()
#		q_StreamPeer.get_partial_data( randi()%50 )
#		q_StreamPeer.get_string( randi()%50 )
#		q_StreamPeer.get_u16()
#		q_StreamPeer.get_u32()
#		q_StreamPeer.get_u64()
#		q_StreamPeer.get_u8()
#		q_StreamPeer.get_utf8_string( randi()%50 )
#		q_StreamPeer.get_var( bool(randi()%2))
#
#		q_StreamPeer.put_16(randi()%50)
#		q_StreamPeer.put_32(randi()%50)
#		q_StreamPeer.put_64(randi()%50)
#		q_StreamPeer.put_8(randi()%50)
#		q_StreamPeer.put_available_bytes()
#		q_StreamPeer.put_data( PoolByteArray([11,124,1241,24,21,214,12,11]) )
#		q_StreamPeer.put_double(randf() * 50)
#		q_StreamPeer.put_float(randf() * 50)
#		q_StreamPeer.put_partial_data( PoolByteArray([11,124,1241,24,21,214,12,11]) )
#		q_StreamPeer.put_string( str(randi()%50) )
#		q_StreamPeer.put_u16(randi()%50)
#		q_StreamPeer.put_u32(randi()%50)
#		q_StreamPeer.put_u64(randi()%50)
#		q_StreamPeer.put_u8(randi()%50)
#		q_StreamPeer.put_utf8_string( str(randi()%50) )
#		q_StreamPeer.put_var(bool(randi()%2))
#
#		if Autoload.WRONG_BUGS:
#			pass
