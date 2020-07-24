extends Node2D

var q_TCP_Server: TCP_Server = TCP_Server.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_TCP_Server, true)


func nodeFunction(q_TCP_Server: TCP_Server, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_TCP_Server = TCP_Server.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_TCP_Server)

	if randi() % 2 == 1:
		q_TCP_Server.is_connection_available()
	if randi() % 2 == 1:
		q_TCP_Server.listen(Autoload.get_int(), Autoload.get_string())
	if randi() % 2 == 1:
		q_TCP_Server.stop()
	if randi() % 2 == 1:
		q_TCP_Server.take_connection()
