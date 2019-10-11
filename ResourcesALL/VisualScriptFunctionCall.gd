extends Node2D

var q_VisualScriptFunctionCall : VisualScriptFunctionCall = VisualScriptFunctionCall.new()
var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if randi() % 2 == 1:
			q_VisualScriptFunctionCall = VisualScriptFunctionCall.new()
			
		
		if randi() % 2 == 1:
			q_VisualScriptFunctionCall.set_call_mode(Autoload.get_randi()) # CallMode
		if randi() % 2 == 1:
			q_VisualScriptFunctionCall.set_base_type(Autoload.get_string())
		if randi() % 2 == 1:
			q_VisualScriptFunctionCall.set_base_script(Autoload.get_string())
		if randi() % 2 == 1:
			q_VisualScriptFunctionCall.set_singleton(Autoload.get_string())
		if randi() % 2 == 1:
			q_VisualScriptFunctionCall.set_basic_type(Autoload.get_randi())
		if randi() % 2 == 1:
			q_VisualScriptFunctionCall.set_base_path(Autoload.get_string())
#	BUG	if randi() % 2 == 1:
#			q_VisualScriptFunctionCall.set_function("Rzsafym")
		if randi() % 2 == 1:
			q_VisualScriptFunctionCall.set_use_default_args(Autoload.get_randi())
		if randi() % 2 == 1:
			q_VisualScriptFunctionCall.set_validate(bool(randi()%2))
		if randi() % 2 == 1:
			q_VisualScriptFunctionCall.set_rpc_call_mode(Autoload.get_randi()) #RPCCallMode
