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
		
			var q_PoolIntArray : PoolIntArray
			
			q_PoolIntArray = PoolIntArray([randi() % 50])
			
			q_PoolIntArray.append(randi()%50)
			q_PoolIntArray.append_array(PoolIntArray([randi()%50]))
			
			#qq += str(q_PoolIntArray.insert( randi()%50, randi()%50) )
			q_PoolIntArray.invert()
			q_PoolIntArray.push_back( randi()%50 )
			#q_PoolIntArray.remove( randi()%50)
			q_PoolIntArray.resize( randi()%50)
			#q_PoolIntArray.set(randi()%50, randi()%50)
			qq += str(q_PoolIntArray.size())
			
			if Autoload.WRONG_BUGS:
				q_PoolIntArray.append(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_PoolIntArray.append_array(PoolIntArray([randi() % Autoload.RANGE - Autoload.RANGE / 2]))
				
				qq += str(q_PoolIntArray.insert( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2) )
				q_PoolIntArray.invert()
				q_PoolIntArray.push_back( randi() % Autoload.RANGE - Autoload.RANGE / 2 )
				q_PoolIntArray.remove( randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_PoolIntArray.resize( randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_PoolIntArray.set(randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2)
				qq += str(q_PoolIntArray.size())
