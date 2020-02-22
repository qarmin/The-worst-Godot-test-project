extends Node2D

var q_PackedVector3Array : PackedVector3Array = Autoload.get_packedvector3array()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_PackedVector3Array,true)

func nodeFunction(q_PackedVector3Array : PackedVector3Array, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_PackedVector3Array = Autoload.get_packedvector3array()

	if randi() % 2 == 1:
		q_PackedVector3Array.append(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_PackedVector3Array.append_array(Autoload.get_packedvector3array())

	if randi() % 2 == 1:
		q_PackedVector3Array.insert( Autoload.get_int(), Autoload.get_vector3())
	if randi() % 2 == 1:
		q_PackedVector3Array.invert()
	if randi() % 2 == 1:
		q_PackedVector3Array.push_back( Autoload.get_vector3())
	if randi() % 2 == 1:
		q_PackedVector3Array.remove(Autoload.get_int()) 
	if randi() % 2 == 1:
		q_PackedVector3Array.resize(Autoload.get_inti(100)) 
	if randi() % 2 == 1:
		q_PackedVector3Array.set(Autoload.get_int(), Autoload.get_vector3()) 
	if randi() % 2 == 1:
		q_PackedVector3Array.size()
