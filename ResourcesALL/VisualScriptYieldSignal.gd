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
		
		var q_VisualScriptYieldSignal : VisualScriptYieldSignal = VisualScriptYieldSignal.new()
		
		q_VisualScriptYieldSignal.set_call_mode(randi() % 3) # CallMode
		q_VisualScriptYieldSignal.set_base_type("Nabzdryngolony")
		q_VisualScriptYieldSignal.set_base_path(".")
		q_VisualScriptYieldSignal.set_signal("Podwodny")
		
		if Autoload.WRONG_BUGS:
			q_VisualScriptYieldSignal.set_call_mode(randi() % 1000 - 500) # CallMode
			q_VisualScriptYieldSignal.set_base_type("Nabzdryngolony")
			q_VisualScriptYieldSignal.set_base_path(".2f")
			q_VisualScriptYieldSignal.set_signal("Podwodny")
