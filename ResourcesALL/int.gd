extends Node2D

# warning-ignore:unused_variable
var q_int : int

func _process(delta) -> void:
	
	if randi() % 20:
		if randi() % 2 == 1:
			q_int = int(Autoload.get_bool())
		if randi() % 2 == 1:
			q_int = int(Autoload.get_float())
		if randi() % 2 == 1:
			q_int = int(Autoload.get_string())
