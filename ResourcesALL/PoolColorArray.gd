extends Node2D

var q_PackedColorArray: PackedColorArray = Autoload.get_packedcolorarray()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_PackedColorArray, true)


func nodeFunction(q_PackedColorArray: PackedColorArray, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_PackedColorArray = Autoload.get_packedcolorarray()

	if randi() % 2 == 1:
		q_PackedColorArray.append(Autoload.get_color())
	if randi() % 2 == 1:
		q_PackedColorArray.append_array(Autoload.get_packedcolorarray())

	if randi() % 2 == 1:
		q_PackedColorArray.duplicate()
	if randi() % 2 == 1:
		q_PackedColorArray.has(Autoload.get_color())
	if randi() % 2 == 1:
		q_PackedColorArray.insert(Autoload.get_int(), Autoload.get_color())
	if randi() % 2 == 1:
		q_PackedColorArray.invert()
	if randi() % 2 == 1:
		q_PackedColorArray.is_empty()
		
	if randi() % 2 == 1:
		q_PackedColorArray.push_back(Autoload.get_color())
	if randi() % 2 == 1:
		q_PackedColorArray.remove(Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedColorArray.resize(Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedColorArray.set(Autoload.get_int(), Autoload.get_color())
	if randi() % 2 == 1:
		q_PackedColorArray.size()
	if randi() % 2 == 1:
		q_PackedColorArray.sort()
	if randi() % 2 == 1:
		q_PackedColorArray.to_byte_array()
