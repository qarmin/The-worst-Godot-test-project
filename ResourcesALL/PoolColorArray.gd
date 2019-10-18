extends Node2D

var q_PoolColorArray : PoolColorArray = Autoload.get_poolcolorarray()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

#
#
#		if randi() % 2 == 1:
#			q_PoolColorArray = Autoload.get_poolcolorarray()
#
#		if randi() % 2 == 1:
#			q_PoolColorArray.append(Autoload.get_color())
#		if randi() % 2 == 1:
#			q_PoolColorArray.append_array(Autoload.get_poolcolorarray())
#
#		if randi() % 2 == 1:
#			Autoload.qq = str(q_PoolColorArray.insert( Autoload.get_int(), Autoload.get_color()) )
#		if randi() % 2 == 1:
#			q_PoolColorArray.invert()
#		if randi() % 2 == 1:
#			q_PoolColorArray.push_back( Autoload.get_color() )
#		if randi() % 2 == 1:
#			q_PoolColorArray.remove( Autoload.get_int())
#		if randi() % 2 == 1:
#			q_PoolColorArray.resize( Autoload.get_int())
#		if randi() % 2 == 1:
#			q_PoolColorArray.set(Autoload.get_int(), Autoload.get_color())
#		if randi() % 2 == 1:
#			Autoload.qq = str(q_PoolColorArray.size())
