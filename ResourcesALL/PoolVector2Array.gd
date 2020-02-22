extends Node2D

var q_PackedVector2Array : PackedVector2Array = Autoload.get_packedvector2array()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_PackedVector2Array,true)

func nodeFunction(q_PackedVector2Array : PackedVector2Array, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_PackedVector2Array = Autoload.get_packedvector2array()

	if randi() % 2 == 1:
		q_PackedVector2Array.append(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_PackedVector2Array.append_array(Autoload.get_packedvector2array())

	if randi() % 2 == 1:
		q_PackedVector2Array.insert( Autoload.get_int(), Autoload.get_vector2())
	if randi() % 2 == 1:
		q_PackedVector2Array.invert()
	if randi() % 2 == 1:
		q_PackedVector2Array.push_back( Autoload.get_vector2())
	if randi() % 2 == 1:
		q_PackedVector2Array.remove( Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedVector2Array.resize( Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedVector2Array.set(Autoload.get_int(), Autoload.get_vector2())
	if randi() % 2 == 1:
		q_PackedVector2Array.size()
