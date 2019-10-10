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
		
		var q_VisualScriptPropertyGet : VisualScriptPropertyGet = VisualScriptPropertyGet.new()
		
		if randi() % 2 == 1:
			q_VisualScriptPropertyGet.set_call_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) # CallMode
		if randi() % 2 == 1:
			q_VisualScriptPropertyGet.set_base_type("Nabzdryngolony")
		if randi() % 2 == 1:
			q_VisualScriptPropertyGet.set_base_script("Debilny Sposób")
		if randi() % 2 == 1:
			q_VisualScriptPropertyGet.set_basic_type(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_VisualScriptPropertyGet.set_base_path(".w")
		if randi() % 2 == 1:
			q_VisualScriptPropertyGet.set_property("Adam")
		if randi() % 2 == 1:
			q_VisualScriptPropertyGet.set_index("Koniak")
