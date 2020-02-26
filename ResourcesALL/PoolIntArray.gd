extends Node2D

var q_PackedInt64Array : PackedInt64Array = Autoload.get_packedint64array()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_PackedInt64Array,true)

func nodeFunction(q_PackedInt64Array : PackedInt64Array, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_PackedInt64Array = Autoload.get_packedint64array()

	if randi() % 2 == 1:
		q_PackedInt64Array.append(Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedInt64Array.append_array(Autoload.get_packedint64array())

	if randi() % 2 == 1:
		q_PackedInt64Array.insert( Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedInt64Array.invert()
	if randi() % 2 == 1:
		q_PackedInt64Array.push_back( Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedInt64Array.remove( Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedInt64Array.resize( Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedInt64Array.set(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedInt64Array.size()
