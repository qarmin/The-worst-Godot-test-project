extends Node2D

var q_VisualScriptReturn : VisualScriptReturn = VisualScriptReturn.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualScriptReturn = VisualScriptReturn.new()

		if randi() % 2 == 1:
			q_VisualScriptReturn.set_enable_return_value(Autoload.get_bool())
		if randi() % 2 == 1:
			q_VisualScriptReturn.set_return_type(Autoload.get_int())
