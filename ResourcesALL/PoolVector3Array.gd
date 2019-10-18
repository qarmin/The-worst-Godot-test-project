extends Node2D

var q_PoolVector3Array : PoolVector3Array = Autoload.get_poolvector3array()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

#
#		if randi() % 2 == 1:
#			q_PoolVector3Array = Autoload.get_poolvector3array()
#
#		if randi() % 2 == 1:
#			q_PoolVector3Array.append(Autoload.get_vector3())
#		if randi() % 2 == 1:
#			q_PoolVector3Array.append_array(Autoload.get_poolvector3array())
#
#		if randi() % 2 == 1:
#			Autoload.qq = str(q_PoolVector3Array.insert( Autoload.get_int(), Autoload.get_vector3()) ) 
#		if randi() % 2 == 1:
#			q_PoolVector3Array.invert()
#		if randi() % 2 == 1:
#			q_PoolVector3Array.push_back( Autoload.get_vector3() )
#		if randi() % 2 == 1:
#			q_PoolVector3Array.remove(Autoload.get_int()) 
#		if randi() % 2 == 1:
#			q_PoolVector3Array.resize(Autoload.get_inti(100)) 
#		if randi() % 2 == 1:
#			q_PoolVector3Array.set(Autoload.get_int(), Autoload.get_vector3()) 
#		if randi() % 2 == 1:
#			Autoload.qq = str(q_PoolVector3Array.size())
