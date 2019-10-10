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
			q_VisualScriptFunctionCall.set_call_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) # CallMode
		if randi() % 2 == 1:
			q_VisualScriptFunctionCall.set_base_type("Miałem")
		if randi() % 2 == 1:
			q_VisualScriptFunctionCall.set_base_script("Hrom")
		if randi() % 2 == 1:
			q_VisualScriptFunctionCall.set_singleton("QQQr")
		if randi() % 2 == 1:
			q_VisualScriptFunctionCall.set_basic_type(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_VisualScriptFunctionCall.set_base_path("wq.")
		if randi() % 2 == 1:
			q_VisualScriptFunctionCall.set_function("Rzsafym")
		if randi() % 2 == 1:
			q_VisualScriptFunctionCall.set_use_default_args(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_VisualScriptFunctionCall.set_validate(bool(randi()%2))
		if randi() % 2 == 1:
			q_VisualScriptFunctionCall.set_rpc_call_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #RPCCallMode
