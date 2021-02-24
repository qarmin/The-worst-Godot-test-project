extends Node2D

var q_PackedByteArray: PackedByteArray = Autoload.get_packedbytearray()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_PackedByteArray, true)


func nodeFunction(q_PackedByteArray: PackedByteArray, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_PackedByteArray = PackedByteArray()
		if randi() % 2 == 1:
			q_PackedByteArray = Autoload.get_packedbytearray()

	if randi() % 2 == 1:
		q_PackedByteArray.append(Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedByteArray.append_array(Autoload.get_packedbytearray())

	if randi() % 2 == 1:
		q_PackedByteArray.compress(Autoload.get_int())  # File.CompressionMode
	if randi() % 2 == 1:
		q_PackedByteArray.decompress(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedByteArray.decompress(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedByteArray.duplicate()

	if randi() % 2 == 1:
		q_PackedByteArray.get_string_from_ascii()
	if randi() % 2 == 1:
		q_PackedByteArray.get_string_from_utf16()
	if randi() % 2 == 1:
		q_PackedByteArray.get_string_from_utf32()
	if randi() % 2 == 1:
		q_PackedByteArray.get_string_from_utf8()

	if randi() % 2 == 1:
		q_PackedByteArray.has(Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedByteArray.hex_encode()
	if randi() % 2 == 1:
		q_PackedByteArray.insert(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedByteArray.invert()
	if randi() % 2 == 1:
		q_PackedByteArray.is_empty()
		
		
	if randi() % 2 == 1:
		q_PackedByteArray.push_back(Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedByteArray.remove(Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedByteArray.resize(Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedByteArray.set(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_PackedByteArray.size()
	if randi() % 2 == 1:
		q_PackedByteArray.sort()
	if randi() % 2 == 1:
		q_PackedByteArray.subarray(Autoload.get_int(), Autoload.get_int())
