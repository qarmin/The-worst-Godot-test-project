extends Node2D

var q_PackedIntArray : PackedIntArray = Autoload.get_packedintarray()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_PackedIntArray,true)

func nodeFunction(q_PackedIntArray : PackedIntArray, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_PackedIntArray = Autoload.get_packedintarray()

	if randi() % 2 == 1:
		q_PackedIntArray.append(Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedIntArray.append_array(Autoload.get_packedintarray())

	if randi() % 2 == 1:
		q_PackedIntArray.insert( Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedIntArray.invert()
	if randi() % 2 == 1:
		q_PackedIntArray.push_back( Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedIntArray.remove( Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedIntArray.resize( Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedIntArray.set(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedIntArray.size()
