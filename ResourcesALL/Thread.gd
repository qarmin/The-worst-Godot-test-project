extends Node2D

var q_Thread : Thread = Thread.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:

	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_Thread = Thread.new()

		if randi() % 2 == 1:
			Autoload.qq = str(q_Thread.get_id())
		if randi() % 2 == 1:
			Autoload.qq = str(q_Thread.is_active())
#	LEAK	if randi() % 2 == 1:
#			Autoload.qq = str(q_Thread.start(self, Autoload.get_string(), String(), Autoload.get_int() ))#Priority
		if randi() % 2 == 1:
			q_Thread.wait_to_finish()

func Hiszpania(var Wychodzi : String) -> void:
	print(Wychodzi)
