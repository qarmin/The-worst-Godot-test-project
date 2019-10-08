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
		if !Autoload.RANDI:
		
			var q_VisualScriptSequence : VisualScriptSequence = VisualScriptSequence.new()
			
			q_VisualScriptSequence.set_steps(randi()%50 + 1)
			
			if Autoload.WRONG_BUGS:
				q_VisualScriptSequence.set_steps(randi() % Autoload.RANGE - Autoload.RANGE / 2)
