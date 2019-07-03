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
		
		var q_PoolVector3Array : PoolVector3Array
		
		q_PoolVector3Array = PoolVector3Array([randf() * 50])
		
		q_PoolVector3Array.append(Vector3(randf() * 50,randf() * 50,randf() * 50))
		q_PoolVector3Array.append_array(PoolVector3Array([Vector3(randf() * 50,randf() * 50,randf() * 50)]))
		
		#qq += str(q_PoolVector3Array.insert( randi()%50, Vector3(randf() * 50,randf() * 50,randf() * 50)) )
		q_PoolVector3Array.invert()
		q_PoolVector3Array.push_back( Vector3(randf() * 50,randf() * 50,randf() * 50) )
		#q_PoolVector3Array.remove( randi()%50)
		q_PoolVector3Array.resize( randi()%50)
		#q_PoolVector3Array.set(randi()%50, Vector3(randf() * 50,randf() * 50,randf() * 50))
		qq += str(q_PoolVector3Array.size())
		
		if Autoload.WRONG_BUGS:
			q_PoolVector3Array = PoolVector3Array([randf() * 1000 - 500])
			
			q_PoolVector3Array.append(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			#BUG q_PoolVector3Array.append_array(PoolVector3Array([Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)]))
			
			qq += str(q_PoolVector3Array.insert( randi() % 10 - 5, Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)) )
			q_PoolVector3Array.invert()
			q_PoolVector3Array.push_back( Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500) )
			q_PoolVector3Array.remove( randi() % 10 - 5)
			q_PoolVector3Array.resize( randi() % 10 - 5)
			q_PoolVector3Array.set(randi() % 10 - 5, Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			qq += str(q_PoolVector3Array.size())
