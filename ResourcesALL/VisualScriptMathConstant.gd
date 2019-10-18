extends Node2D

var q_VisualScriptMathConstant : VisualScriptMathConstant = VisualScriptMathConstant.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualScriptMathConstant = VisualScriptMathConstant.new()

		if randi() % 2 == 1:
			q_VisualScriptMathConstant.set_math_constant(Autoload.get_int())
