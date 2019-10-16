extends Node2D

var q_PoolRealArray : PoolRealArray = Autoload.get_poolrealarray()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

#
#		if randi() % 2 == 1:
#			q_PoolRealArray = Autoload.get_poolrealarray()
#
#		if randi() % 2 == 1:
#			q_PoolRealArray.append(Autoload.get_float())
#		if randi() % 2 == 1:
#			q_PoolRealArray.append_array(Autoload.get_poolrealarray())
#
#		if randi() % 2 == 1:
#			Autoload.qq = str(q_PoolRealArray.insert( Autoload.get_int(), Autoload.get_float()) )
#		if randi() % 2 == 1:
#			q_PoolRealArray.invert()
#		if randi() % 2 == 1:
#			q_PoolRealArray.push_back( Autoload.get_float() )
#		if randi() % 2 == 1:
#			q_PoolRealArray.remove( Autoload.get_int())
#		if randi() % 2 == 1:
#			q_PoolRealArray.resize( Autoload.get_int())
#		if randi() % 2 == 1:
#			q_PoolRealArray.set(Autoload.get_int(), Autoload.get_float())
#		if randi() % 2 == 1:
#			Autoload.qq = str(q_PoolRealArray.size())
