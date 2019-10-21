extends Node2D

var q_PoolStringArray : PoolStringArray = Autoload.get_poolstringarray()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

#
#		if randi() % 2 == 1:
#			q_PoolStringArray = Autoload.get_poolstringarray()
#
#		if randi() % 2 == 1:
#			q_PoolStringArray.append(Autoload.get_string())
#		if randi() % 2 == 1:
#			q_PoolStringArray.append_array(Autoload.get_poolstringarray())
#
#		if randi() % 2 == 1:
#			q_PoolStringArray.insert( Autoload.get_int(), Autoload.get_string()))
#		if randi() % 2 == 1:
#			q_PoolStringArray.invert()
#		if randi() % 2 == 1:
#			q_PoolStringArray.join(Autoload.get_string()))
#		if randi() % 2 == 1:
#			q_PoolStringArray.push_back(Autoload.get_string())
#		if randi() % 2 == 1:
#			q_PoolStringArray.remove( Autoload.get_int())
#		if randi() % 2 == 1:
#			q_PoolStringArray.resize( Autoload.get_int())
#		if randi() % 2 == 1:
#			q_PoolStringArray.set(Autoload.get_int(), Autoload.get_string())
#		if randi() % 2 == 1:
#			q_PoolStringArray.size())
