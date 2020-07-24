extends Node2D

var q_PackedStringArray: PackedStringArray = Autoload.get_packedstringarray()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_PackedStringArray, true)


func nodeFunction(q_PackedStringArray: PackedStringArray, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_PackedStringArray = Autoload.get_packedstringarray()

	if randi() % 2 == 1:
		q_PackedStringArray.append(Autoload.get_string())
	if randi() % 2 == 1:
		q_PackedStringArray.append_array(Autoload.get_packedstringarray())

	if randi() % 2 == 1:
		q_PackedStringArray.insert(Autoload.get_int(), Autoload.get_string())
	if randi() % 2 == 1:
		q_PackedStringArray.invert()
#	if randi() % 2 == 1: #MISSING
#		q_PackedStringArray.join(Autoload.get_string())
	if randi() % 2 == 1:
		q_PackedStringArray.push_back(Autoload.get_string())
	if randi() % 2 == 1:
		q_PackedStringArray.remove(Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedStringArray.resize(Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedStringArray.set(Autoload.get_int(), Autoload.get_string())
	if randi() % 2 == 1:
		q_PackedStringArray.size()
