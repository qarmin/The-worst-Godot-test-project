extends Node2D

var q_Thread: Thread = Thread.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Thread, true)


func nodeFunction(q_Thread: Thread, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_Thread = Thread.new()
#	if randi() % 2 == 1: #BUG?
#		AutoResourcesReference.nodeFunction(q_Thread)

	if randi() % 2 == 1:
		q_Thread.get_id()
	if randi() % 2 == 1:
		q_Thread.is_active()
#	LEAK	if randi() % 2 == 1:
#			q_Thread.start(q_Thread, Autoload.get_string(), String(), Autoload.get_int()))#Priority
	if randi() % 2 == 1:
		q_Thread.wait_to_finish()


func Hiszpania(Wychodzi: String) -> void:
	print(Wychodzi)
