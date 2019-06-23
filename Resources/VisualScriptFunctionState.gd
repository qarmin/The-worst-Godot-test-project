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
		
		q_VisualScriptFunctionState.connect_to_signal( Node.new(), "Widać", ["Gra"] )
		qq += str(q_VisualScriptFunctionState.is_valid())
		q_VisualScriptFunctionState.resume( ["Dino"] )
		
		if Autoload.WRONG_BUGS:
			pass
