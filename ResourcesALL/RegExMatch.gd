extends Node2D

var q_RegExMatch : RegExMatch = RegExMatch.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_RegExMatch = RegExMatch.new()

		if randi() % 2 == 1:
			q_RegExMatch.get_subject())
		if randi() % 2 == 1:
			q_RegExMatch.get_names())
		if randi() % 2 == 1:
			q_RegExMatch.get_strings())

		if randi() % 2 == 1:
			q_RegExMatch.get_end( Autoload.get_string()))
		if randi() % 2 == 1:
			q_RegExMatch.get_group_count())
		if randi() % 2 == 1:
			q_RegExMatch.get_start( Autoload.get_string()))
		if randi() % 2 == 1:
			q_RegExMatch.get_string( Autoload.get_string()))
