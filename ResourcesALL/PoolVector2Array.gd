extends Node2D

var q_PoolVector2Array : PoolVector2Array = Autoload.get_poolvector2array()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_PoolVector2Array,true)

func nodeFunction(q_PoolVector2Array : PoolVector2Array, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_PoolVector2Array = Autoload.get_poolvector2array()

	if randi() % 2 == 1:
		q_PoolVector2Array.append(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_PoolVector2Array.append_array(Autoload.get_poolvector2array())

	if randi() % 2 == 1:
		q_PoolVector2Array.insert( Autoload.get_int(), Autoload.get_vector2())
	if randi() % 2 == 1:
		q_PoolVector2Array.invert()
	if randi() % 2 == 1:
		q_PoolVector2Array.push_back( Autoload.get_vector2())
	if randi() % 2 == 1:
		q_PoolVector2Array.remove( Autoload.get_int())
	if randi() % 2 == 1:
		q_PoolVector2Array.resize( Autoload.get_int())
	if randi() % 2 == 1:
		q_PoolVector2Array.set(Autoload.get_int(), Autoload.get_vector2())
	if randi() % 2 == 1:
		q_PoolVector2Array.size()
