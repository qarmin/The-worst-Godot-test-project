extends Node2D

var q_PoolIntArray : PoolIntArray = Autoload.get_poolintarray()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_PoolIntArray,true)

func nodeFunction(q_PoolIntArray : PoolIntArray, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_PoolIntArray = Autoload.get_poolintarray()

	if randi() % 2 == 1:
		q_PoolIntArray.append(Autoload.get_int())
	if randi() % 2 == 1:
		q_PoolIntArray.append_array(Autoload.get_poolintarray())

	if randi() % 2 == 1:
		q_PoolIntArray.insert( Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_PoolIntArray.invert()
	if randi() % 2 == 1:
		q_PoolIntArray.push_back( Autoload.get_int())
	if randi() % 2 == 1:
		q_PoolIntArray.remove( Autoload.get_int())
	if randi() % 2 == 1:
		q_PoolIntArray.resize( Autoload.get_int())
	if randi() % 2 == 1:
		q_PoolIntArray.set(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_PoolIntArray.size()
