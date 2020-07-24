extends Node2D

var q_VisualScript: VisualScript = VisualScript.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualScript, true)


func nodeFunction(q_VisualScript: VisualScript, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_VisualScript = VisualScript.new()
	if randi() % 2 == 1:
		AutoResourcesScript.nodeFunction(q_VisualScript)

	### START TEMP

	var temp_VisualScriptBasicTypeConstant: VisualScriptBasicTypeConstant = VisualScriptBasicTypeConstant.new()
	AutoResourcesVisualScriptBasicTypeConstant.nodeFunction(temp_VisualScriptBasicTypeConstant)

	### END TEMP

	if randi() % 2 == 1:
		q_VisualScript.add_custom_signal(Autoload.get_string())
	if randi() % 2 == 1:
		q_VisualScript.add_function(Autoload.get_string())
	if randi() % 2 == 1:
		q_VisualScript.add_node(Autoload.get_string(), Autoload.get_int(), temp_VisualScriptBasicTypeConstant, Autoload.get_vector2())
	if randi() % 2 == 1:
		q_VisualScript.add_variable(Autoload.get_string(), Autoload.get_vector2(), Autoload.get_bool())

	if randi() % 2 == 1:
		q_VisualScript.custom_signal_add_argument(Autoload.get_string(), Autoload.get_int(), Autoload.get_string(), Autoload.get_int())
	if randi() % 2 == 1:
		q_VisualScript.custom_signal_get_argument_count(Autoload.get_string())
	if randi() % 2 == 1:
		q_VisualScript.custom_signal_get_argument_name(Autoload.get_string(), Autoload.get_int())
	if randi() % 2 == 1:
		q_VisualScript.custom_signal_get_argument_type(Autoload.get_string(), Autoload.get_int())
	if randi() % 2 == 1:
		q_VisualScript.custom_signal_remove_argument(Autoload.get_string(), Autoload.get_int())
	if randi() % 2 == 1:
		q_VisualScript.custom_signal_set_argument_name(Autoload.get_string(), Autoload.get_int(), Autoload.get_string())
	if randi() % 2 == 1:
		q_VisualScript.custom_signal_set_argument_type(Autoload.get_string(), Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_VisualScript.custom_signal_swap_argument(Autoload.get_string(), Autoload.get_int(), Autoload.get_int())

	if randi() % 2 == 1:
		q_VisualScript.data_connect(Autoload.get_string(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_VisualScript.data_disconnect(Autoload.get_string(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int())

	if randi() % 2 == 1:
		q_VisualScript.get_function_node_id(Autoload.get_string())
	if randi() % 2 == 1:
		q_VisualScript.get_function_scroll(Autoload.get_string())
	if randi() % 2 == 1:
		q_VisualScript.get_node(Autoload.get_string(), Autoload.get_int())
	if randi() % 2 == 1:
		q_VisualScript.get_node_position(Autoload.get_string(), Autoload.get_int())
	if randi() % 2 == 1:
		q_VisualScript.get_variable_default_value(Autoload.get_string())
	if randi() % 2 == 1:
		q_VisualScript.get_variable_export(Autoload.get_string())
	if randi() % 2 == 1:
		q_VisualScript.get_variable_info(Autoload.get_string())

	if randi() % 2 == 1:
		q_VisualScript.has_custom_signal(Autoload.get_string())
	if randi() % 2 == 1:
		q_VisualScript.has_data_connection(Autoload.get_string(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_VisualScript.has_function(Autoload.get_string())
	if randi() % 2 == 1:
		q_VisualScript.has_node(Autoload.get_string(), Autoload.get_int())
	if randi() % 2 == 1:
		q_VisualScript.has_sequence_connection(Autoload.get_string(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_VisualScript.has_variable(Autoload.get_string())

	if randi() % 2 == 1:
		q_VisualScript.remove_custom_signal(Autoload.get_string())
	if randi() % 2 == 1:
		q_VisualScript.remove_function(Autoload.get_string())
	if randi() % 2 == 1:
		q_VisualScript.remove_node(Autoload.get_string(), Autoload.get_int())
	if randi() % 2 == 1:
		q_VisualScript.remove_variable(Autoload.get_string())

	if randi() % 2 == 1:
		q_VisualScript.rename_custom_signal(Autoload.get_string(), Autoload.get_string())
	if randi() % 2 == 1:
		q_VisualScript.rename_function(Autoload.get_string(), Autoload.get_string())
	if randi() % 2 == 1:
		q_VisualScript.rename_variable(Autoload.get_string(), Autoload.get_string())
	if randi() % 2 == 1:
		q_VisualScript.sequence_connect(Autoload.get_string(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_VisualScript.sequence_disconnect(Autoload.get_string(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int())

	if randi() % 2 == 1:
		q_VisualScript.set_function_scroll(Autoload.get_string(), Autoload.get_vector2())
	if randi() % 2 == 1:
		q_VisualScript.set_instance_base_type(Autoload.get_string())
	if randi() % 2 == 1:
		q_VisualScript.set_node_position(Autoload.get_string(), Autoload.get_int(), Autoload.get_vector2())
	if randi() % 2 == 1:
		q_VisualScript.set_variable_default_value(Autoload.get_string(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_VisualScript.set_variable_export(Autoload.get_string(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_VisualScript.set_variable_info(Autoload.get_string(), Autoload.get_dictionary())
