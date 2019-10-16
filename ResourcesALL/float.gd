extends Node2D

# warning-ignore:unused_variable
var q_float : float
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_float = float(Autoload.get_bool())
		if randi() % 2 == 1:
			q_float = float(Autoload.get_int())
		if randi() % 2 == 1:
			q_float = float(Autoload.get_string())
