extends Node2D

var q_Array : Array = []


func _process(delta) -> void:
	if randi() % 20 == 1:
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
		
	### START TEMP
	var temp_Node : Node = Node.new()
	
	### END TEMP

	if randi() % 2 == 1:
		q_Array.append(Autoload.get_string())
	if randi() % 2 == 1:
		q_Array.back()

	if randi() % 2 == 1:
		q_Array.bsearch( Autoload.get_string(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_Array.bsearch_custom( Autoload.get_string(), temp_Node, Autoload.get_string(), Autoload.get_bool())

	if randi() % 2 == 1:
		q_Array.clear()
	if randi() % 2 == 1:
		q_Array.count( Autoload.get_string())
	if randi() % 2 == 1:
		q_Array.duplicate( Autoload.get_bool())
	if randi() % 2 == 1:
		q_Array.empty()
	if randi() % 2 == 1:
		q_Array.erase( Autoload.get_string())

	if randi() % 2 == 1:
		q_Array.find( Autoload.get_string(), Autoload.get_int())
	if randi() % 2 == 1:
		q_Array.find_last( Autoload.get_string())

	if randi() % 2 == 1:
		q_Array.front()

	if randi() % 2 == 1:
		q_Array.has( Autoload.get_string())
	if randi() % 2 == 1:
		q_Array.hash()

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
		q_Array.push_back( Autoload.get_string())
	if randi() % 2 == 1:
		q_Array.push_front( Autoload.get_string())

	if randi() % 2 == 1:
		q_Array.remove( Autoload.get_int())
	if randi() % 2 == 1:
		q_Array.resize( Autoload.get_inti(1000))
	if randi() % 2 == 1:
		q_Array.rfind( Autoload.get_string(), Autoload.get_int())
	if randi() % 2 == 1:
		q_Array.shuffle()
	if randi() % 2 == 1:
		q_Array.size()
	if randi() % 2 == 1:
		q_Array.slice(Autoload.get_int(),Autoload.get_int(),Autoload.get_int(),Autoload.get_bool())

	if randi() % 2 == 1:
		q_Array.sort()
	if randi() % 2 == 1:
		q_Array.sort_custom( temp_Node, Autoload.get_string())

	### CLEANING
	temp_Node.queue_free()
	### END CLEANING
