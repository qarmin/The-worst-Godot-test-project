extends Node2D

var q_JSONParseResult: JSONParseResult = JSONParseResult.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_JSONParseResult, true)


func nodeFunction(q_JSONParseResult: JSONParseResult, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_JSONParseResult = JSONParseResult.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_JSONParseResult)

	if randi() % 2 == 1:
		q_JSONParseResult.set_error(Autoload.get_int())  #ERROR
	if randi() % 2 == 1:
		q_JSONParseResult.set_error_string(Autoload.get_string())
	if randi() % 2 == 1:
		q_JSONParseResult.set_error_line(Autoload.get_int())
	if randi() % 2 == 1:
		q_JSONParseResult.set_result(Autoload.get_string())
