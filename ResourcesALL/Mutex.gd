extends Node2D

var q_Mutex : Mutex = Mutex.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Mutex,true)

func nodeFunction(q_Mutex : Mutex, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_Mutex = Mutex.new()
#	if randi() % 2 == 1: #BUG?
#		AutoResourcesReference.nodeFunction(q_Mutex)

	if randi() % 2 == 1:
		q_Mutex.lock()
	if randi() % 2 == 1:
		q_Mutex.try_lock()
	if randi() % 2 == 1:
		q_Mutex.unlock()
