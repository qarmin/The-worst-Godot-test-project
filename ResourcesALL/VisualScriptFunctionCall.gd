extends Node2D

var q_VisualScriptFunctionCall: VisualScriptFunctionCall = VisualScriptFunctionCall.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualScriptFunctionCall, true)


func nodeFunction(q_VisualScriptFunctionCall: VisualScriptFunctionCall, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_VisualScriptFunctionCall = VisualScriptFunctionCall.new()
	if randi() % 2 == 1:
		AutoResourcesVisualScriptNode.nodeFunction(q_VisualScriptFunctionCall)

	if randi() % 2 == 1:
		q_VisualScriptFunctionCall.set_call_mode(Autoload.get_int())  # CallMode
	if randi() % 2 == 1:
		q_VisualScriptFunctionCall.set_base_type(Autoload.get_string())
	if randi() % 2 == 1:
		q_VisualScriptFunctionCall.set_base_script(Autoload.get_string())
	if randi() % 2 == 1:
		q_VisualScriptFunctionCall.set_singleton(Autoload.get_string())
	if randi() % 2 == 1:
		q_VisualScriptFunctionCall.set_basic_type(Autoload.get_int())
	if randi() % 2 == 1:
		q_VisualScriptFunctionCall.set_base_path(Autoload.get_string())
#	BUG	if randi() % 2 == 1:
#			q_VisualScriptFunctionCall.set_function(Autoload.get_string())
	if randi() % 2 == 1:
		q_VisualScriptFunctionCall.set_use_default_args(Autoload.get_int())
	if randi() % 2 == 1:
		q_VisualScriptFunctionCall.set_validate(Autoload.get_bool())
	if randi() % 2 == 1:
		q_VisualScriptFunctionCall.set_rpc_call_mode(Autoload.get_int())  #RPCCallMode
