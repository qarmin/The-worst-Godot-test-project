extends Node2D

var q_PoolByteArray : PoolByteArray
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
			q_PoolByteArray = PoolByteArray([Color()])
			
		if randi() % 2 == 1:
			q_PoolByteArray.append(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_PoolByteArray.append_array(PoolByteArray([randi() % Autoload.RANGE - Autoload.RANGE / 2]))
			
		if randi() % 2 == 1:
			qq += str(q_PoolByteArray.compress(randi() % Autoload.RANGE - Autoload.RANGE / 2)) # File.CompressionMode
		if randi() % 2 == 1:
			qq += str(q_PoolByteArray.decompress(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
			
		if randi() % 2 == 1:
			qq += str(q_PoolByteArray.get_string_from_ascii())
		if randi() % 2 == 1:
			qq += str(q_PoolByteArray.get_string_from_utf8())
			
		if randi() % 2 == 1:
			qq += str(q_PoolByteArray.insert( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2) )
		if randi() % 2 == 1:
			q_PoolByteArray.invert()
		if randi() % 2 == 1:
			q_PoolByteArray.push_back( randi() % Autoload.RANGE - Autoload.RANGE / 2 )
		if randi() % 2 == 1:
			q_PoolByteArray.remove( randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_PoolByteArray.resize( randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_PoolByteArray.set(randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			qq += str(q_PoolByteArray.size())
		if randi() % 2 == 1:
			qq += str(q_PoolByteArray.subarray(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
