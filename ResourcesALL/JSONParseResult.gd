extends Node2D

var q_JSONParseResult : JSONParseResult = JSONParseResult.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_JSONParseResult = JSONParseResult.new()

		if randi() % 2 == 1:
			q_JSONParseResult.set_error(Autoload.get_int()) #ERROR
		if randi() % 2 == 1:
			q_JSONParseResult.set_error_string(Autoload.get_string())
		if randi() % 2 == 1:
			q_JSONParseResult.set_error_line(Autoload.get_int())
		if randi() % 2 == 1:
			q_JSONParseResult.set_result(Autoload.get_string())
