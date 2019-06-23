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
		
		var q_VisualScriptFunctionState : VisualScriptFunctionState = VisualScriptFunctionState.new()
		
		#var q_temp : Node = load("res://RES/Node.tscn").instance()
		#q_VisualScriptFunctionState.connect_to_signal( q_temp, "Widać", ["Gra"] )
		#q_temp.queue_free()
		qq += str(q_VisualScriptFunctionState.is_valid())
		#q_VisualScriptFunctionState.resume( ["Dino"] )
		
		if Autoload.WRONG_BUGS:
			var q_temp_0 : Node = load("res://RES/Node.tscn").instance()
			q_VisualScriptFunctionState.connect_to_signal( q_temp_0, "Widać", ["Gra"] )
			q_temp_0.queue_free()
			qq += str(q_VisualScriptFunctionState.is_valid())
			q_VisualScriptFunctionState.resume( ["Dino"] )
