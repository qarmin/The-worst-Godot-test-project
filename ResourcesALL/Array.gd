extends Node2D

var q_Array : Array = []
var q_temp : Node = load("res://RES/Node.tscn").instance()

onready var counter : float = Autoload.get_rand_time()

#	add_child(q_temp)

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_temp.queue_free()
			q_temp = load("res://RES/Node.tscn").instance()
			add_child(q_temp)

		if randi() % 2 == 1:
			if randi() % 2 == 1:
				q_Array = Array(Autoload.get_poolcolorarray())
			if randi() % 2 == 1:
				q_Array = Array(Autoload.get_poolvector3array())
			if randi() % 2 == 1:
				q_Array = Array(Autoload.get_poolvector2array())
			if randi() % 2 == 1:
				q_Array = Array(Autoload.get_poolstringarray())
			if randi() % 2 == 1:
				q_Array = Array(Autoload.get_poolrealarray())
			if randi() % 2 == 1:
				q_Array = Array(Autoload.get_poolintarray())
			if randi() % 2 == 1:
				q_Array = Array(Autoload.get_poolbytearray())

		if randi() % 2 == 1:
			q_Array.append(Autoload.get_string())
		if randi() % 2 == 1:
			q_Array.back()

		if randi() % 2 == 1:
			Autoload.qq = str(q_Array.bsearch( Autoload.get_string(), Autoload.get_bool()))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Array.bsearch_custom( Autoload.get_string(), q_temp, Autoload.get_string(), Autoload.get_bool()))

		if randi() % 2 == 1:
			q_Array.clear()
		if randi() % 2 == 1:
			Autoload.qq = str(q_Array.count( Autoload.get_string() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Array.duplicate( Autoload.get_bool()))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Array.empty())
		if randi() % 2 == 1:
			q_Array.erase( Autoload.get_string() )

		if randi() % 2 == 1:
			Autoload.qq = str(q_Array.find( Autoload.get_string(), Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Array.find_last( Autoload.get_string() ))

		if randi() % 2 == 1:
			q_Array.front()

		if randi() % 2 == 1:
			Autoload.qq = str(q_Array.has( Autoload.get_string() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Array.hash())

		if randi() % 2 == 1:
			q_Array.insert( Autoload.get_int(), Autoload.get_string()) 
		if randi() % 2 == 1:
			q_Array.invert()
		if randi() % 2 == 1:
			q_Array.max()
		if randi() % 2 == 1:
			q_Array.min()

		if randi() % 2 == 1:
			q_Array.pop_back()
		if randi() % 2 == 1:
			q_Array.pop_front()

		if randi() % 2 == 1:
			q_Array.push_back( Autoload.get_string() )
		if randi() % 2 == 1:
			q_Array.push_front( Autoload.get_string() )

		if randi() % 2 == 1:
			q_Array.remove( Autoload.get_int())
		if randi() % 2 == 1:
			q_Array.resize( Autoload.get_inti(1000))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Array.rfind( Autoload.get_string(), Autoload.get_int()))
		if randi() % 2 == 1:
			q_Array.shuffle()
		if randi() % 2 == 1:
			Autoload.qq = str(q_Array.size())

		if randi() % 2 == 1:
			q_Array.sort()
		if randi() % 2 == 1:
			q_Array.sort_custom( q_temp, Autoload.get_string() )

func delete_node():
	q_temp.queue_free()
