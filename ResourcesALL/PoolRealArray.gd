extends Node2D

var q_PackedFloat64Array : PackedFloat64Array = Autoload.get_packedfloat64array()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_PackedFloat64Array,true)

func nodeFunction(q_PackedFloat64Array : PackedFloat64Array, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_PackedFloat64Array = Autoload.get_packedfloat64array()

	if randi() % 2 == 1:
		q_PackedFloat64Array.append(Autoload.get_float())
	if randi() % 2 == 1:
		q_PackedFloat64Array.append_array(Autoload.get_packedfloat64array())

	if randi() % 2 == 1:
		q_PackedFloat64Array.insert( Autoload.get_int(), Autoload.get_float())
	if randi() % 2 == 1:
		q_PackedFloat64Array.invert()
	if randi() % 2 == 1:
		q_PackedFloat64Array.push_back( Autoload.get_float())
	if randi() % 2 == 1:
		q_PackedFloat64Array.remove( Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedFloat64Array.resize( Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedFloat64Array.set(Autoload.get_int(), Autoload.get_float())
	if randi() % 2 == 1:
		q_PackedFloat64Array.size()
