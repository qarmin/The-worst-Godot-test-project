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
			
			var q_PoolStringArray : PoolStringArray
			
			q_PoolStringArray = PoolStringArray([str("a")])
			
			q_PoolStringArray.append("Rzeczy")
			q_PoolStringArray.append_array(PoolStringArray([randi()%50]))
			
			#qq += str(q_PoolStringArray.insert( randi()%50, "Rzeczy") )
			q_PoolStringArray.invert()
			qq += str(q_PoolStringArray.join("q"))
			q_PoolStringArray.push_back("Rzeczy" )
			#q_PoolStringArray.remove( randi()%50)
			q_PoolStringArray.resize( randi()%50)
			#q_PoolStringArray.set(randi()%50, "Rzeczy")
			qq += str(q_PoolStringArray.size())
			
			if Autoload.WRONG_BUGS:
				q_PoolStringArray.append("Rzeczy")
				q_PoolStringArray.append_array(PoolStringArray([randi() % Autoload.RANGE - Autoload.RANGE / 2]))
				
				qq += str(q_PoolStringArray.insert( randi() % Autoload.RANGE - Autoload.RANGE / 2, "Rzeczy") )
				q_PoolStringArray.invert()
				qq += str(q_PoolStringArray.join("q"))
				q_PoolStringArray.push_back("Rzeczy" )
				q_PoolStringArray.remove( randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_PoolStringArray.resize( randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_PoolStringArray.set(randi() % Autoload.RANGE - Autoload.RANGE / 2, "Rzeczy")
				qq += str(q_PoolStringArray.size())
