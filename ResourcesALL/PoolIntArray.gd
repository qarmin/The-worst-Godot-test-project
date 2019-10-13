extends Node2D

var q_PoolIntArray : PoolIntArray = PoolIntArray([124])
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
			q_PoolIntArray = PoolIntArray([124])
		
		if randi() % 2 == 1:
			q_PoolIntArray.append(Autoload.get_int())
		if randi() % 2 == 1:
			q_PoolIntArray.append_array(PoolIntArray([Autoload.get_int()]))
			
		if randi() % 2 == 1:
			qq += str(q_PoolIntArray.insert( Autoload.get_int(), Autoload.get_int()) )
		if randi() % 2 == 1:
			q_PoolIntArray.invert()
		if randi() % 2 == 1:
			q_PoolIntArray.push_back( Autoload.get_int() )
		if randi() % 2 == 1:
			q_PoolIntArray.remove( Autoload.get_int())
		if randi() % 2 == 1:
			q_PoolIntArray.resize( Autoload.get_int())
		if randi() % 2 == 1:
			q_PoolIntArray.set(Autoload.get_int(), Autoload.get_int())
		if randi() % 2 == 1:
			qq += str(q_PoolIntArray.size())
