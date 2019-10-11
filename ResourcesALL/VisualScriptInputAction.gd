extends Node2D

			
var q_VisualScriptInputAction : VisualScriptInputAction = VisualScriptInputAction.new()
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
			q_VisualScriptInputAction = VisualScriptInputAction.new()
		
		if randi() % 2 == 1:
			q_VisualScriptInputAction.set_action_name("Akcja")
		if randi() % 2 == 1:
			q_VisualScriptInputAction.set_action_mode(Autoload.get_randi()) # Mode
