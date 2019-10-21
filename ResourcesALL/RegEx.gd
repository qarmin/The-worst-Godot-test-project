extends Node2D

var q_RegEx : RegEx = RegEx.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_RegEx,true)

func nodeFunction(q_RegEx : RegEx, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_RegEx = RegEx.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_RegEx)

	if randi() % 2 == 1:
		q_RegEx.clear()
	if randi() % 2 == 1:
		q_RegEx.compile( Autoload.get_string())

	if randi() % 2 == 1:
		q_RegEx.get_group_count()
	if randi() % 2 == 1:
		q_RegEx.get_names()
	if randi() % 2 == 1:
		q_RegEx.get_pattern()

	if randi() % 2 == 1:
		q_RegEx.is_valid()

	if randi() % 2 == 1:
		q_RegEx.search( Autoload.get_string(), Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_RegEx.search_all( Autoload.get_string(), Autoload.get_int(), Autoload.get_int())

	if randi() % 2 == 1:
		q_RegEx.sub( Autoload.get_string(), Autoload.get_string(), Autoload.get_bool(), Autoload.get_int(), Autoload.get_int())
