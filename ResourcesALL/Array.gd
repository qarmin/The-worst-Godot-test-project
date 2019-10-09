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
			
		var q_Array : Array
		var q_temp : Node = load("res://RES/Node.tscn").instance()
		if !Autoload.RANDI:
			
			q_Array = Array(PoolColorArray([Color()]))
			q_Array = Array(PoolVector3Array([Color()]))
			q_Array = Array(PoolVector2Array([Color()]))
			q_Array = Array(PoolStringArray([Color()]))
			q_Array = Array(PoolRealArray([Color()]))
			q_Array = Array(PoolIntArray([Color()]))
			q_Array = Array(PoolByteArray([Color()]))
			
			q_Array.append("Rosół")
			q_Array.back()
			
			qq += str(q_Array.bsearch( "Nie", bool(randi()%2)))
			qq += str(q_Array.bsearch_custom( "Nie", q_temp, "Jesion", bool(randi()%2)))
			
			q_Array.clear()
			qq += str(q_Array.count( "Nie" ))
			qq += str(q_Array.duplicate( bool(randi()%2)))
			qq += str(q_Array.empty())
			q_Array.erase( "Nie" )
			
			qq += str(q_Array.find( "Jesiotr", randi()%50))
			qq += str(q_Array.find_last( "Nie" ))
			
			#q_Array.front()
			
			qq += str(q_Array.has( "Nie" ))
			qq += str(q_Array.hash())
	
			#q_Array.insert( randi()%50, "Nie") 
			q_Array.invert()
			q_Array.max()
			q_Array.min()
	
			q_Array.pop_back()
			q_Array.pop_front()
	
			q_Array.push_back( "Nie" )
			q_Array.push_front( "Nie" )
	
			#q_Array.remove( randi()%50)
			q_Array.resize( randi()%50)
			qq += str(q_Array.rfind( "Nie", randi()%50))
			q_Array.shuffle()
			qq += str(q_Array.size())
	
			q_Array.sort()
			q_Array.sort_custom( q_temp, "Ram" )
			
			if Autoload.WRONG_BUGS:
				q_Array = Array(PoolColorArray([Color()]))
				q_Array = Array(PoolVector3Array([Color()]))
				q_Array = Array(PoolVector2Array([Color()]))
				q_Array = Array(PoolStringArray([Color()]))
				q_Array = Array(PoolRealArray([Color()]))
				q_Array = Array(PoolIntArray([Color()]))
				q_Array = Array(PoolByteArray([Color()]))
				
				q_Array.append("Rosół")
				q_Array.back()
				
				qq += str(q_Array.bsearch( "Nie", bool(randi()%2)))
				qq += str(q_Array.bsearch_custom( "Nie", q_temp, "Jesion", bool(randi()%2)))
				
				q_Array.clear()
				qq += str(q_Array.count( "Nie" ))
				qq += str(q_Array.duplicate( bool(randi()%2)))
				qq += str(q_Array.empty())
				q_Array.erase( "Nie" )
				
				qq += str(q_Array.find( "Jesiotr", randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(q_Array.find_last( "Nie" ))
				
				q_Array.front()
				
				qq += str(q_Array.has( "Nie" ))
				qq += str(q_Array.hash())
		
				q_Array.insert( randi() % Autoload.RANGE - Autoload.RANGE / 2, "Nie") 
				q_Array.invert()
				q_Array.max()
				q_Array.min()
		
				q_Array.pop_back()
				q_Array.pop_front()
		
				q_Array.push_back( "Nie" )
				q_Array.push_front( "Nie" )
		
				q_Array.remove( randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_Array.resize( randi() % Autoload.RANGE - Autoload.RANGE / 2)
				qq += str(q_Array.rfind( "Nie", randi() % Autoload.RANGE - Autoload.RANGE / 2))
				q_Array.shuffle()
				qq += str(q_Array.size())
		
				q_Array.sort()
				q_Array.sort_custom( q_temp, "Ram" )

		else: #RANDI
			if randi() % 2 == 1:
				q_Array = Array(PoolColorArray([Color()]))
			if randi() % 2 == 1:
				q_Array = Array(PoolVector3Array([Color()]))
			if randi() % 2 == 1:
				q_Array = Array(PoolVector2Array([Color()]))
			if randi() % 2 == 1:
				q_Array = Array(PoolStringArray([Color()]))
			if randi() % 2 == 1:
				q_Array = Array(PoolRealArray([Color()]))
			if randi() % 2 == 1:
				q_Array = Array(PoolIntArray([Color()]))
			if randi() % 2 == 1:
				q_Array = Array(PoolByteArray([Color()]))
				
			if randi() % 2 == 1:
				q_Array.append("Rosół")
			if randi() % 2 == 1:
				q_Array.back()
				
			if randi() % 2 == 1:
				qq += str(q_Array.bsearch( "Nie", bool(randi()%2)))
			if randi() % 2 == 1:
				qq += str(q_Array.bsearch_custom( "Nie", q_temp, "Jesion", bool(randi()%2)))
				
			if randi() % 2 == 1:
				q_Array.clear()
			if randi() % 2 == 1:
				qq += str(q_Array.count( "Nie" ))
			if randi() % 2 == 1:
				qq += str(q_Array.duplicate( bool(randi()%2)))
			if randi() % 2 == 1:
				qq += str(q_Array.empty())
			if randi() % 2 == 1:
				q_Array.erase( "Nie" )
				
			if randi() % 2 == 1:
				qq += str(q_Array.find( "Jesiotr", randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				qq += str(q_Array.find_last( "Nie" ))
				
			if randi() % 2 == 1:
				q_Array.front()
				
			if randi() % 2 == 1:
				qq += str(q_Array.has( "Nie" ))
			if randi() % 2 == 1:
				qq += str(q_Array.hash())
		
			if randi() % 2 == 1:
				q_Array.insert( randi() % Autoload.RANGE - Autoload.RANGE / 2, "Nie") 
			if randi() % 2 == 1:
				q_Array.invert()
			if randi() % 2 == 1:
				q_Array.max()
			if randi() % 2 == 1:
				q_Array.min()
		
			if randi() % 2 == 1:
				q_Array.pop_back()
			if randi() % 2 == 1:
				q_Array.pop_front()
		
			if randi() % 2 == 1:
				q_Array.push_back( "Nie" )
			if randi() % 2 == 1:
				q_Array.push_front( "Nie" )
		
			if randi() % 2 == 1:
				q_Array.remove( randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Array.resize( randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				qq += str(q_Array.rfind( "Nie", randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				q_Array.shuffle()
			if randi() % 2 == 1:
				qq += str(q_Array.size())
		
			if randi() % 2 == 1:
				q_Array.sort()
			if randi() % 2 == 1:
				q_Array.sort_custom( q_temp, "Ram" )


		q_temp.queue_free()
