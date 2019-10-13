extends Node2D

var q_PoolRealArray : PoolRealArray = PoolRealArray([1.4])
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
			q_PoolRealArray = PoolRealArray([1.4])
		
		if randi() % 2 == 1:
			q_PoolRealArray.append(Autoload.get_float())
		if randi() % 2 == 1:
			q_PoolRealArray.append_array(PoolRealArray([Autoload.get_int()]))
			
		if randi() % 2 == 1:
			qq += str(q_PoolRealArray.insert( Autoload.get_int(), Autoload.get_float()) )
		if randi() % 2 == 1:
			q_PoolRealArray.invert()
		if randi() % 2 == 1:
			q_PoolRealArray.push_back( Autoload.get_float() )
		if randi() % 2 == 1:
			q_PoolRealArray.remove( Autoload.get_int())
		if randi() % 2 == 1:
			q_PoolRealArray.resize( Autoload.get_int())
		if randi() % 2 == 1:
			q_PoolRealArray.set(Autoload.get_int(), Autoload.get_float())
		if randi() % 2 == 1:
			qq += str(q_PoolRealArray.size())
