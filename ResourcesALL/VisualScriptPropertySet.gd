extends Node2D

var q_VisualScriptPropertySet : VisualScriptPropertySet = VisualScriptPropertySet.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualScriptPropertySet = VisualScriptPropertySet.new()

		if randi() % 2 == 1:
			q_VisualScriptPropertySet.set_call_mode(Autoload.get_int()) # CallMode
		if randi() % 2 == 1:
			q_VisualScriptPropertySet.set_base_type(Autoload.get_string())
		if randi() % 2 == 1:
			q_VisualScriptPropertySet.set_base_script(Autoload.get_string())
		if randi() % 2 == 1:
			q_VisualScriptPropertySet.set_basic_type(Autoload.get_int())
		if randi() % 2 == 1:
			q_VisualScriptPropertySet.set_base_path(Autoload.get_nodepath(self))
		if randi() % 2 == 1:
			q_VisualScriptPropertySet.set_property(Autoload.get_string())
		if randi() % 2 == 1:
			q_VisualScriptPropertySet.set_index(Autoload.get_string())
		if randi() % 2 == 1:
			q_VisualScriptPropertySet.set_assign_op(Autoload.get_int()) # AssignOP
