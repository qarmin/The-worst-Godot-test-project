extends Node2D

var q_PoolVector2Array : PoolVector2Array = PoolVector2Array([Autoload.get_randf()])
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
			q_PoolVector2Array = PoolVector2Array([Autoload.get_randf()])
			
		if randi() % 2 == 1:
			q_PoolVector2Array.append(Vector2(Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			q_PoolVector2Array.append_array(PoolVector2Array([Vector2(Autoload.get_randf(),Autoload.get_randf())]))
			
		if randi() % 2 == 1:
			qq += str(q_PoolVector2Array.insert( Autoload.get_randi(), Vector2(Autoload.get_randf(),Autoload.get_randf())) )
		if randi() % 2 == 1:
			q_PoolVector2Array.invert()
		if randi() % 2 == 1:
			q_PoolVector2Array.push_back( Vector2(Autoload.get_randf(),Autoload.get_randf()) )
		if randi() % 2 == 1:
			q_PoolVector2Array.remove( Autoload.get_randi())
		if randi() % 2 == 1:
			q_PoolVector2Array.resize( Autoload.get_randi())
		if randi() % 2 == 1:
			q_PoolVector2Array.set(Autoload.get_randi(), Vector2(Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(q_PoolVector2Array.size())
