extends Node2D

var q_Dictionary: Dictionary = Autoload.get_dictionary()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Dictionary, true)


func nodeFunction(q_Dictionary: Dictionary, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_Dictionary = Autoload.get_dictionary()

	if randi() % 2 == 1:
		q_Dictionary.clear()
	if randi() % 2 == 1:
		q_Dictionary.duplicate(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Dictionary.empty()
	if randi() % 2 == 1:
		q_Dictionary.erase(Autoload.get_string())
	if randi() % 2 == 1:
		q_Dictionary.get(Autoload.get_int(), Autoload.get_int())

	if randi() % 2 == 1:
		q_Dictionary.has(Autoload.get_int())
	if randi() % 2 == 1:
		q_Dictionary.has_all(Autoload.get_array())
	if randi() % 2 == 1:
		q_Dictionary.hash()

	if randi() % 2 == 1:
		q_Dictionary.keys()
	if randi() % 2 == 1:
		q_Dictionary.size()
	if randi() % 2 == 1:
		q_Dictionary.values()
