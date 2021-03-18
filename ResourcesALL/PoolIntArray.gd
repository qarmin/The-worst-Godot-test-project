extends Node2D

var q_PoolIntArray : PoolIntArray = Autoload.get_poolintarray()

func _process(delta) -> void:
	if randi() % 20:
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
