extends Node2D

var q_VisualScriptLocalVar : VisualScriptLocalVar = VisualScriptLocalVar.new()
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
			q_VisualScriptLocalVar = VisualScriptLocalVar.new()
		
		
		if randi() % 2 == 1:
			q_VisualScriptLocalVar.set_var_name("Pawulon")
		if randi() % 2 == 1:
			q_VisualScriptLocalVar.set_var_type(randi() % Autoload.RANGE - Autoload.RANGE / 2)
