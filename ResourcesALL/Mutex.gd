extends Node2D

var q_Mutex : Mutex = Mutex.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_Mutex = Mutex.new()

		if randi() % 2 == 1:
			q_Mutex.lock()
		if randi() % 2 == 1:
			Autoload.qq = str(q_Mutex.try_lock())
		if randi() % 2 == 1:
			q_Mutex.unlock()
