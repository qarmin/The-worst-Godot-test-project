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
			q_VisualScriptPropertyGet.set_call_mode(Autoload.get_randi()) # CallMode
		if randi() % 2 == 1:
			q_VisualScriptPropertyGet.set_base_type(Autoload.get_string())
		if randi() % 2 == 1:
			q_VisualScriptPropertyGet.set_base_script(Autoload.get_string())
		if randi() % 2 == 1:
			q_VisualScriptPropertyGet.set_basic_type(Autoload.get_randi())
		if randi() % 2 == 1:
			q_VisualScriptPropertyGet.set_base_path(Autoload.get_string())
		if randi() % 2 == 1:
			q_VisualScriptPropertyGet.set_property(Autoload.get_string())
		if randi() % 2 == 1:
			q_VisualScriptPropertyGet.set_index(Autoload.get_string())
