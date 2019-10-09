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
		
		var q_VisualScriptReturn : VisualScriptReturn = VisualScriptReturn.new()
		if !Autoload.RANDI:
			
			q_VisualScriptReturn.set_enable_return_value(bool(randi()%2))
			q_VisualScriptReturn.set_return_type(randi()%50)
			
			if Autoload.WRONG_BUGS:
				q_VisualScriptReturn.set_enable_return_value(bool(randi()%2))
				q_VisualScriptReturn.set_return_type(randi() % Autoload.RANGE - Autoload.RANGE / 2)

		else: #RANDI
			if randi() % 2 == 1:
				q_VisualScriptReturn.set_enable_return_value(bool(randi()%2))
			if randi() % 2 == 1:
				q_VisualScriptReturn.set_return_type(randi() % Autoload.RANGE - Autoload.RANGE / 2)
