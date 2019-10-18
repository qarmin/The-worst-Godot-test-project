extends Node2D

var q_Dictionary : Dictionary = Autoload.get_dictionary()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_Dictionary = Autoload.get_dictionary()

		if randi() % 2 == 1:
			q_Dictionary.clear()
		if randi() % 2 == 1:
			Autoload.qq = str(q_Dictionary.duplicate( Autoload.get_bool()))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Dictionary.empty())
		if randi() % 2 == 1:
			Autoload.qq = str(q_Dictionary.erase( Autoload.get_string()))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Dictionary.get( Autoload.get_int(),Autoload.get_int()))

		if randi() % 2 == 1:
			Autoload.qq = str(q_Dictionary.has( Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Dictionary.has_all( [Autoload.get_string(), Autoload.get_string()] ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Dictionary.hash())

		if randi() % 2 == 1:
			Autoload.qq = str(q_Dictionary.keys())
		if randi() % 2 == 1:
			Autoload.qq = str(q_Dictionary.size())
		if randi() % 2 == 1:
			Autoload.qq = str(q_Dictionary.values())
