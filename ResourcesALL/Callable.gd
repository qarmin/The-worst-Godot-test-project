extends Node2D

var q_Callable: Callable

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Callable, true)


func nodeFunction(q_Callable: Callable, can_reset: bool = false) -> void:
	pass
#	if can_reset:
#		if randi() % 2 == 1:
#			q_Callable = Callable(Autoload.get_nodes(self), Autoload.get_string())

#	if randi() % 2 == 1:
#		q_Callable.call(Autoload.get_string())
