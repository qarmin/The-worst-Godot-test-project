extends Node2D

var q_VisualScriptBasicTypeConstant : VisualScriptBasicTypeConstant = VisualScriptBasicTypeConstant.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualScriptBasicTypeConstant = VisualScriptBasicTypeConstant.new()

		if randi() % 2 == 1:
			q_VisualScriptBasicTypeConstant.set_basic_type(Autoload.get_int())
		if randi() % 2 == 1:
			q_VisualScriptBasicTypeConstant.set_basic_type_constant(Autoload.get_string())
