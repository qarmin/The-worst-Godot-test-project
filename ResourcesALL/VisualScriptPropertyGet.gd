extends Node2D

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		var q_VisualScriptPropertyGet : VisualScriptPropertyGet = VisualScriptPropertyGet.new()

		if randi() % 2 == 1:
			q_VisualScriptPropertyGet.set_call_mode(Autoload.get_int()) # CallMode
		if randi() % 2 == 1:
			q_VisualScriptPropertyGet.set_base_type(Autoload.get_string())
		if randi() % 2 == 1:
			q_VisualScriptPropertyGet.set_base_script(Autoload.get_string())
		if randi() % 2 == 1:
			q_VisualScriptPropertyGet.set_basic_type(Autoload.get_int())
		if randi() % 2 == 1:
			q_VisualScriptPropertyGet.set_base_path(Autoload.get_string())
		if randi() % 2 == 1:
			q_VisualScriptPropertyGet.set_property(Autoload.get_string())
		if randi() % 2 == 1:
			q_VisualScriptPropertyGet.set_index(Autoload.get_string())
