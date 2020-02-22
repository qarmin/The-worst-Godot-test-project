extends Node2D

var q_PackedRealArray : PackedRealArray = Autoload.get_packedrealarray()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_PackedRealArray,true)

func nodeFunction(q_PackedRealArray : PackedRealArray, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_PackedRealArray = Autoload.get_packedrealarray()

	if randi() % 2 == 1:
		q_PackedRealArray.append(Autoload.get_float())
	if randi() % 2 == 1:
		q_PackedRealArray.append_array(Autoload.get_packedrealarray())

	if randi() % 2 == 1:
		q_PackedRealArray.insert( Autoload.get_int(), Autoload.get_float())
	if randi() % 2 == 1:
		q_PackedRealArray.invert()
	if randi() % 2 == 1:
		q_PackedRealArray.push_back( Autoload.get_float())
	if randi() % 2 == 1:
		q_PackedRealArray.remove( Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedRealArray.resize( Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedRealArray.set(Autoload.get_int(), Autoload.get_float())
	if randi() % 2 == 1:
		q_PackedRealArray.size()
