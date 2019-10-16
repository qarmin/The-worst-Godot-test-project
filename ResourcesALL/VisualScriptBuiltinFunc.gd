extends Node2D

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		var q_VisualScriptBuiltinFunc : VisualScriptBuiltinFunc = VisualScriptBuiltinFunc.new()

		if randi() % 2 == 1:
			q_VisualScriptBuiltinFunc.set_func(Autoload.get_int()) # BuiltinFunc
