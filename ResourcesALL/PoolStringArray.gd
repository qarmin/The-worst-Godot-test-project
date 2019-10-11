extends Node2D

var q_PoolStringArray : PoolStringArray = PoolStringArray([""])
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
			q_PoolStringArray = PoolStringArray([Autoload.get_string()])
			
		if randi() % 2 == 1:
			q_PoolStringArray.append(Autoload.get_string())
		if randi() % 2 == 1:
			q_PoolStringArray.append_array(PoolStringArray([Autoload.get_randi()]))
			
		if randi() % 2 == 1:
			qq += str(q_PoolStringArray.insert( Autoload.get_randi(), Autoload.get_string()) )
		if randi() % 2 == 1:
			q_PoolStringArray.invert()
		if randi() % 2 == 1:
			qq += str(q_PoolStringArray.join(Autoload.get_string()))
		if randi() % 2 == 1:
			q_PoolStringArray.push_back(Autoload.get_string() )
		if randi() % 2 == 1:
			q_PoolStringArray.remove( Autoload.get_randi())
		if randi() % 2 == 1:
			q_PoolStringArray.resize( Autoload.get_randi())
		if randi() % 2 == 1:
			q_PoolStringArray.set(Autoload.get_randi(), Autoload.get_string())
		if randi() % 2 == 1:
			qq += str(q_PoolStringArray.size())
