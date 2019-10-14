extends Node2D

var q_PoolVector2Array : PoolVector2Array = Autoload.get_poolvector2array()
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
			q_PoolVector2Array = Autoload.get_poolvector2array()
			
		if randi() % 2 == 1:
			q_PoolVector2Array.append(Autoload.get_vector2())
		if randi() % 2 == 1:
			q_PoolVector2Array.append_array(Autoload.get_poolvector2array())
			
		if randi() % 2 == 1:
			qq += str(q_PoolVector2Array.insert( Autoload.get_int(), Autoload.get_vector2()) )
		if randi() % 2 == 1:
			q_PoolVector2Array.invert()
		if randi() % 2 == 1:
			q_PoolVector2Array.push_back( Autoload.get_vector2() )
		if randi() % 2 == 1:
			q_PoolVector2Array.remove( Autoload.get_int())
		if randi() % 2 == 1:
			q_PoolVector2Array.resize( Autoload.get_int())
		if randi() % 2 == 1:
			q_PoolVector2Array.set(Autoload.get_int(), Autoload.get_vector2())
		if randi() % 2 == 1:
			qq += str(q_PoolVector2Array.size())
