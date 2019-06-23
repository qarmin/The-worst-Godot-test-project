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
		
		var q_PoolRealArray : PoolRealArray
		
		q_PoolRealArray = PoolRealArray([randf() * 50])
		
		q_PoolRealArray.append(randf() * 50)
		q_PoolRealArray.append_array(PoolRealArray([randi()%50]))
		
		qq += str(q_PoolRealArray.insert( randi()%50, randf() * 50) )
		q_PoolRealArray.invert()
		q_PoolRealArray.push_back( randf() * 50 )
		q_PoolRealArray.remove( randi()%50)
		q_PoolRealArray.resize( randi()%50)
		q_PoolRealArray.set(randi()%50, randf() * 50)
		qq += str(q_PoolRealArray.size())
		
		if Autoload.WRONG_BUGS:
			pass
