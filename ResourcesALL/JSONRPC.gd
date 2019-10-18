extends Node2D

#var q_JSONRPC : JSONRPC = JSONRPC.new()
onready var counter : float = Autoload.get_rand_time()

#
#
#
#
#func alt_process(delta) -> void:
#	counter -= delta
#
#
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
##		if randi() % 2 == 1:
##	LEAK		q_JSONRPC.free()
##			q_JSONRPC = JSONRPC.new()
#
#
#		if randi() % 2 == 1:
#			Autoload.qq = str(q_JSONRPC.make_notification(Autoload.get_string(), Autoload.get_int()))
#		if randi() % 2 == 1:
#			Autoload.qq = str(q_JSONRPC.make_request(Autoload.get_string(), Autoload.get_int(), Autoload.get_int()))
#		if randi() % 2 == 1:
#			Autoload.qq = str(q_JSONRPC.make_response(Autoload.get_int(), Autoload.get_int()))
#		if randi() % 2 == 1:
#			Autoload.qq = str(q_JSONRPC.make_response_error(Autoload.get_int(), Autoload.get_string(), Autoload.get_int()))
#
#		if randi() % 2 == 1:
#			Autoload.qq = str(q_JSONRPC.process_action(Autoload.get_int(), Autoload.get_bool()))
#		if randi() % 2 == 1:
#			Autoload.qq = str(q_JSONRPC.process_string(Autoload.get_string()))
#
#		if randi() % 2 == 1:
#			q_JSONRPC.set_scope(Autoload.get_string(), self)
#
#func delete_node():
#	q_JSONRPC.free()
