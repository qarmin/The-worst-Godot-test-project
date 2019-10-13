extends Node2D

var q_VisualScriptSelect : VisualScriptSelect = VisualScriptSelect.new()
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
			q_VisualScriptSelect = VisualScriptSelect.new()
			
		
		if randi() % 2 == 1:
			q_VisualScriptSelect.set_typed(Autoload.get_int())
