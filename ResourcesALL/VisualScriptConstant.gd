extends Node2D

var q_VisualScriptConstant : VisualScriptConstant = VisualScriptConstant.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualScriptConstant = VisualScriptConstant.new()

		if randi() % 2 == 1:
			q_VisualScriptConstant.set_constant_type(Autoload.get_int()) #VARIANT_MAX
		if randi() % 2 == 1:
			q_VisualScriptConstant.set_constant_value(Autoload.get_vector2())
