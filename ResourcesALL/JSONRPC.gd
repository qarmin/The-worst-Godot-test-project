extends Node2D
# TODO CHECK IF BUG
#var q_JSONRPC : JSONRPC = JSONRPC.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()


#		nodeFunction(q_JSONRPC,true)


func nodeFunction(q_JSONRPC: JSONRPC, can_reset: bool = false) -> void:
#	if can_reset:
#		if randi() % 2 == 1:
#			q_JSONRPC.free()
#			q_JSONRPC = JSONRPC.new()
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_JSONRPC)

	if randi() % 2 == 1:
		q_JSONRPC.make_notification(Autoload.get_string(), Autoload.get_int())
	if randi() % 2 == 1:
		q_JSONRPC.make_request(Autoload.get_string(), Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_JSONRPC.make_response(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_JSONRPC.make_response_error(Autoload.get_int(), Autoload.get_string(), Autoload.get_int())

	if randi() % 2 == 1:
		q_JSONRPC.process_action(Autoload.get_int(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_JSONRPC.process_string(Autoload.get_string())

	if randi() % 2 == 1:
		q_JSONRPC.set_scope(Autoload.get_string(), q_JSONRPC)

#func _exit_tree():
#	q_JSONRPC.free()
