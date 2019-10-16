extends Node2D

var q_VisualScriptClassConstant : VisualScriptClassConstant = VisualScriptClassConstant.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualScriptClassConstant = VisualScriptClassConstant.new()

		if randi() % 2 == 1:
			q_VisualScriptClassConstant.set_base_type(Autoload.get_string())
		if randi() % 2 == 1:
			q_VisualScriptClassConstant.set_class_constant(Autoload.get_string())
