extends Node2D

var q_VisualScriptGlobalConstant : VisualScriptGlobalConstant = VisualScriptGlobalConstant.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualScriptGlobalConstant = VisualScriptGlobalConstant.new()

		if randi() % 2 == 1:
			q_VisualScriptGlobalConstant.set_global_constant(Autoload.get_int())
