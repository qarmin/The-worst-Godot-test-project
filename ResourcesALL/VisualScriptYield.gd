extends Node2D

var q_VisualScriptYield : VisualScriptYield = VisualScriptYield.new()
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
			q_VisualScriptYield = VisualScriptYield.new()
			
		
		if randi() % 2 == 1:
			q_VisualScriptYield.set_yield_mode(Autoload.get_randi()) #Yield mode
		if randi() % 2 == 1:
			q_VisualScriptYield.set_wait_time(Autoload.get_randi())
