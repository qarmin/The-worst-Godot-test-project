extends Node2D

# warning-ignore:unused_variable
var q_float : float

func _process(delta) -> void:
	
	if randi() % 20:
		if randi() % 2 == 1:
			q_float = float(Autoload.get_bool())
		if randi() % 2 == 1:
			q_float = float(Autoload.get_int())
		if randi() % 2 == 1:
			q_float = float(Autoload.get_string())
