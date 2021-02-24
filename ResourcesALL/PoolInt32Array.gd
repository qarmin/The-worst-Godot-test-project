extends Node2D

var q_PackedInt32Array: PackedInt32Array = Autoload.get_packedint32array()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_PackedInt32Array, true)


func nodeFunction(q_PackedInt32Array: PackedInt32Array, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_PackedInt32Array = Autoload.get_packedint32array()

	if randi() % 2 == 1:
		q_PackedInt32Array.append(Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedInt32Array.append_array(Autoload.get_packedint32array())

	if randi() % 2 == 1:
		q_PackedInt32Array.insert(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedInt32Array.invert()
	if randi() % 2 == 1:
		q_PackedInt32Array.push_back(Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedInt32Array.remove(Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedInt32Array.resize(Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedInt32Array.set(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedInt32Array.size()
