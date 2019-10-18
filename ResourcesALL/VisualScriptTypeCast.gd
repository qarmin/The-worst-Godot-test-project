extends Node2D

var q_VisualScriptTypeCast : VisualScriptTypeCast = VisualScriptTypeCast.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualScriptTypeCast = VisualScriptTypeCast.new()

		if randi() % 2 == 1:
			q_VisualScriptTypeCast.set_base_type(Autoload.get_string())
		if randi() % 2 == 1:
			q_VisualScriptTypeCast.set_base_script(Autoload.get_string())
