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
		
		var q_VisualScriptYield : VisualScriptYield = VisualScriptYield.new()
		
		q_VisualScriptYield.set_yield_mode(randi() % 3 + 1) #Yield mode
		q_VisualScriptYield.set_wait_time(randi()%50)
		
		if Autoload.WRONG_BUGS:
			pass
