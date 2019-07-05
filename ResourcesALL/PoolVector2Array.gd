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
		
		var q_PoolVector2Array : PoolVector2Array
		
		q_PoolVector2Array = PoolVector2Array([randf() * 50])
		
		q_PoolVector2Array.append(Vector2(randf() * 50,randf() * 50))
		q_PoolVector2Array.append_array(PoolVector2Array([Vector2(randf() * 50,randf() * 50)]))
		
		#qq += str(q_PoolVector2Array.insert( randi()%50, Vector2(randf() * 50,randf() * 50)) )
		q_PoolVector2Array.invert()
		q_PoolVector2Array.push_back( Vector2(randf() * 50,randf() * 50) )
		#q_PoolVector2Array.remove( randi()%50)
		q_PoolVector2Array.resize( randi()%50)
		#q_PoolVector2Array.set(randi()%50, Vector2(randf() * 50,randf() * 50))
		qq += str(q_PoolVector2Array.size())
		
		if Autoload.WRONG_BUGS:
			q_PoolVector2Array = PoolVector2Array([randf() * 1000 - 500])
			
			q_PoolVector2Array.append(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
			q_PoolVector2Array.append_array(PoolVector2Array([Vector2(randf() * 1000 - 500,randf() * 1000 - 500)]))
			
			qq += str(q_PoolVector2Array.insert( randi() % 1000 - 500, Vector2(randf() * 1000 - 500,randf() * 1000 - 500)) )
			q_PoolVector2Array.invert()
			q_PoolVector2Array.push_back( Vector2(randf() * 1000 - 500,randf() * 1000 - 500) )
			q_PoolVector2Array.remove( randi() % 1000 - 500)
			q_PoolVector2Array.resize( randi() % 1000 - 500)
			q_PoolVector2Array.set(randi() % 1000 - 500, Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
			qq += str(q_PoolVector2Array.size())
