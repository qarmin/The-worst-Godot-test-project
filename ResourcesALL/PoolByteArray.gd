extends Node2D

var q_PoolByteArray : PoolByteArray = Autoload.get_poolbytearray()
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
			q_PoolByteArray = Autoload.get_poolbytearray()

		if randi() % 2 == 1:
			q_PoolByteArray.append(Autoload.get_int())
		if randi() % 2 == 1:
			q_PoolByteArray.append_array(Autoload.get_poolbytearray())
			
		if randi() % 2 == 1:
			qq += str(q_PoolByteArray.compress(Autoload.get_int())) # File.CompressionMode
#	BUG	if randi() % 2 == 1:
#			qq += str(q_PoolByteArray.decompress(Autoload.get_int(),Autoload.get_int()))

		if randi() % 2 == 1:
			qq += str(q_PoolByteArray.get_string_from_ascii())
		if randi() % 2 == 1:
			qq += str(q_PoolByteArray.get_string_from_utf8())


		if randi() % 2 == 1:
			qq += str(q_PoolByteArray.hex_encode())
		if randi() % 2 == 1:
			qq += str(q_PoolByteArray.insert( Autoload.get_int(), Autoload.get_int()) )
		if randi() % 2 == 1:
			q_PoolByteArray.invert()
		if randi() % 2 == 1:
			q_PoolByteArray.push_back( Autoload.get_int() )
		if randi() % 2 == 1:
			q_PoolByteArray.remove( Autoload.get_int())
		if randi() % 2 == 1:
			q_PoolByteArray.resize( Autoload.get_int())
		if randi() % 2 == 1:
			q_PoolByteArray.set(Autoload.get_int(), Autoload.get_int())
		if randi() % 2 == 1:
			qq += str(q_PoolByteArray.size())
		if randi() % 2 == 1:
			qq += str(q_PoolByteArray.subarray(Autoload.get_int(),Autoload.get_int()))
