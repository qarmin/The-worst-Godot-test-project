extends Node2D

var q_PackedFloat32Array: PackedFloat32Array = Autoload.get_packedfloat32array()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_PackedFloat32Array, true)


func nodeFunction(q_PackedFloat32Array: PackedFloat32Array, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_PackedFloat32Array = Autoload.get_packedfloat32array()

	if randi() % 2 == 1:
		q_PackedFloat32Array.append(Autoload.get_float())
	if randi() % 2 == 1:
		q_PackedFloat32Array.append_array(Autoload.get_packedfloat32array())

	if randi() % 2 == 1:
		q_PackedFloat32Array.insert(Autoload.get_int(), Autoload.get_float())
	if randi() % 2 == 1:
		q_PackedFloat32Array.invert()
	if randi() % 2 == 1:
		q_PackedFloat32Array.push_back(Autoload.get_float())
	if randi() % 2 == 1:
		q_PackedFloat32Array.remove(Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedFloat32Array.resize(Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedFloat32Array.set(Autoload.get_int(), Autoload.get_float())
	if randi() % 2 == 1:
		q_PackedFloat32Array.size()
