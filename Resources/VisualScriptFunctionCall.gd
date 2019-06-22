extends Node2D

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
		
		var q_VisualScriptFunctionCall : VisualScriptFunctionCall = VisualScriptFunctionCall.new()
		
		q_VisualScriptFunctionCall.set_call_mode(randi() % 5) # CallMode
		q_VisualScriptFunctionCall.set_base_type("Int")
		q_VisualScriptFunctionCall.set_base_script("Script")
		#q_VisualScriptFunctionCall.set_singleton("QQQr")
		q_VisualScriptFunctionCall.set_basic_type(randi()%50)
		q_VisualScriptFunctionCall.set_base_path(".")
		#q_VisualScriptFunctionCall.set_function("Rzym")
		q_VisualScriptFunctionCall.set_use_default_args(randi()%50)
		q_VisualScriptFunctionCall.set_validate(bool(randi()%2))
		q_VisualScriptFunctionCall.set_rpc_call_mode(randi() % 5) #RPCCallMode
		
		if Autoload.WRONG_BUGS:
			q_VisualScriptFunctionCall.set_call_mode(randi() % 1000 - 500) # CallMode
			q_VisualScriptFunctionCall.set_base_type("Miałem")
			q_VisualScriptFunctionCall.set_base_script("Hrom")
			q_VisualScriptFunctionCall.set_singleton("QQQr")
			q_VisualScriptFunctionCall.set_basic_type(randi() % 1000 - 500)
			q_VisualScriptFunctionCall.set_base_path("wq.")
			q_VisualScriptFunctionCall.set_function("Rzsafym")
			q_VisualScriptFunctionCall.set_use_default_args(randi() % 1000 - 500)
			q_VisualScriptFunctionCall.set_validate(bool(randi()%2))
			q_VisualScriptFunctionCall.set_rpc_call_mode(randi() % 1000 - 500) #RPCCallMode
