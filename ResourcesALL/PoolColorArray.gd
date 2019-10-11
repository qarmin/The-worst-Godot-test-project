extends Node2D

var q_PoolColorArray : PoolColorArray = PoolColorArray([Color(randf(),randf(),randf(),randf()),Color(randf(),randf(),randf(),randf())])
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
			q_PoolColorArray = PoolColorArray([Color(randf(),randf(),randf(),randf()),Color(randf(),randf(),randf(),randf())])
			
		if randi() % 2 == 1:
			q_PoolColorArray.append(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			q_PoolColorArray.append_array(PoolColorArray([Color(randf(),randf(),randf(),randf())]))
			
		if randi() % 2 == 1:
			qq += str(q_PoolColorArray.insert( Autoload.get_randi(), Color(randf(),randf(),randf(),randf())) )
		if randi() % 2 == 1:
			q_PoolColorArray.invert()
		if randi() % 2 == 1:
			q_PoolColorArray.push_back( Color(randf(),randf(),randf(),randf()) )
		if randi() % 2 == 1:
			q_PoolColorArray.remove( Autoload.get_randi())
		if randi() % 2 == 1:
			q_PoolColorArray.resize( Autoload.get_randi())
		if randi() % 2 == 1:
			q_PoolColorArray.set(Autoload.get_randi(), Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			qq += str(q_PoolColorArray.size())
