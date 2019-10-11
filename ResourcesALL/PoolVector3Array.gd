extends Node2D

var q_PoolVector3Array : PoolVector3Array = PoolVector3Array([Autoload.get_randf()])
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
			q_PoolVector3Array = PoolVector3Array([Autoload.get_randf()])
			
		if randi() % 2 == 1:
			q_PoolVector3Array.append(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			q_PoolVector3Array.append_array(PoolVector3Array([Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())]))
			
		if randi() % 2 == 1:
			qq += str(q_PoolVector3Array.insert( randi() % 10 - 5, Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())) )
		if randi() % 2 == 1:
			q_PoolVector3Array.invert()
		if randi() % 2 == 1:
			q_PoolVector3Array.push_back( Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()) )
		if randi() % 2 == 1:
			q_PoolVector3Array.remove( randi() % 10 - 5)
		if randi() % 2 == 1:
			q_PoolVector3Array.resize( randi() % 10 - 5)
		if randi() % 2 == 1:
			q_PoolVector3Array.set(randi() % 10 - 5, Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
			qq += str(q_PoolVector3Array.size())
