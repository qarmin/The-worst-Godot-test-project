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
	if can_reset:
		if randi() % 2 == 1:
			q_Callable = Callable()
		if randi() % 2 == 1:
			q_Callable = Callable(Autoload.get_nodes(self), Autoload.get_string())

	if randi() % 2 == 1:
		q_Callable.bind(Autoload.get_string())

	if randi() % 2 == 1:
		q_Callable.call(Autoload.get_string())
	if randi() % 2 == 1:
		q_Callable.call_deferred(Autoload.get_string())
		
	if randi() % 2 == 1:
		q_Callable.get_method()
	if randi() % 2 == 1:
		q_Callable.get_object()
	if randi() % 2 == 1:
		q_Callable.get_object_id()
	if randi() % 2 == 1:
		q_Callable.hash()
		
	if randi() % 2 == 1:
		q_Callable.is_custom()
	if randi() % 2 == 1:
		q_Callable.is_null()
	if randi() % 2 == 1:
		q_Callable.is_standard()
		
	if randi() % 2 == 1:
		q_Callable.unbind(Autoload.get_randi())
