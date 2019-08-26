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
		
		var q_PoolByteArray : PoolByteArray
		
		q_PoolByteArray = PoolByteArray([Color()])
		
		q_PoolByteArray.append(randi()%50)
		q_PoolByteArray.append_array(PoolByteArray([randi()%50]))
		
		qq += str(q_PoolByteArray.compress(randi() % 4)) # File.CompressionMode
		#qq += str(q_PoolByteArray.decompress(randi()%50,randi() % 4))
		
		qq += str(q_PoolByteArray.get_string_from_ascii())
		qq += str(q_PoolByteArray.get_string_from_utf8())
		
		#qq += str(q_PoolByteArray.insert( randi()%50, randi()%50) )
		q_PoolByteArray.invert()
		q_PoolByteArray.push_back( randi()%50 )
		#q_PoolByteArray.remove( randi()%50)
		q_PoolByteArray.resize( randi()%50)
		#q_PoolByteArray.set(randi()%50, randi()%50)
		qq += str(q_PoolByteArray.size())
		#qq += str(q_PoolByteArray.subarray(randi()%50,randi()%50))
		
		if Autoload.WRONG_BUGS:
			q_PoolByteArray = PoolByteArray([Color()])
			
			q_PoolByteArray.append(randi() % 1000 - 500)
			q_PoolByteArray.append_array(PoolByteArray([randi() % 1000 - 500]))
			
			qq += str(q_PoolByteArray.compress(randi() % 1000 - 500)) # File.CompressionMode
			qq += str(q_PoolByteArray.decompress(randi() % 1000 - 500,randi() % 1000 - 500))
			
			qq += str(q_PoolByteArray.get_string_from_ascii())
			qq += str(q_PoolByteArray.get_string_from_utf8())
			
			qq += str(q_PoolByteArray.insert( randi() % 1000 - 500, randi() % 1000 - 500) )
			q_PoolByteArray.invert()
			q_PoolByteArray.push_back( randi() % 1000 - 500 )
			q_PoolByteArray.remove( randi() % 1000 - 500)
			q_PoolByteArray.resize( randi() % 1000 - 500)
			q_PoolByteArray.set(randi() % 1000 - 500, randi() % 1000 - 500)
			qq += str(q_PoolByteArray.size())
			qq += str(q_PoolByteArray.subarray(randi() % 1000 - 500,randi() % 1000 - 500))
