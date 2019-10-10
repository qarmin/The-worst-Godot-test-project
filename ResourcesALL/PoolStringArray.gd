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
			q_PoolStringArray = PoolStringArray([str(randi()%99)])
			
		if randi() % 2 == 1:
			q_PoolStringArray.append(str(randi()%99))
		if randi() % 2 == 1:
			q_PoolStringArray.append_array(PoolStringArray([randi() % Autoload.RANGE - Autoload.RANGE / 2]))
			
		if randi() % 2 == 1:
			qq += str(q_PoolStringArray.insert( randi() % Autoload.RANGE - Autoload.RANGE / 2, str(randi()%99)) )
		if randi() % 2 == 1:
			q_PoolStringArray.invert()
		if randi() % 2 == 1:
			qq += str(q_PoolStringArray.join(str(randi()%99)))
		if randi() % 2 == 1:
			q_PoolStringArray.push_back(str(randi()%99) )
		if randi() % 2 == 1:
			q_PoolStringArray.remove( randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_PoolStringArray.resize( randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_PoolStringArray.set(randi() % Autoload.RANGE - Autoload.RANGE / 2, str(randi()%99))
		if randi() % 2 == 1:
			qq += str(q_PoolStringArray.size())
