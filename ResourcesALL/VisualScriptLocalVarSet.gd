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
		
		var q_VisualScriptLocalVarSet : VisualScriptLocalVarSet = VisualScriptLocalVarSet.new()
		if !Autoload.RANDI:
			
			q_VisualScriptLocalVarSet.set_var_name("Piotrek")
			q_VisualScriptLocalVarSet.set_var_type(randi()%50)
			
			if Autoload.WRONG_BUGS:
				q_VisualScriptLocalVarSet.set_var_name("Piotrek")
				q_VisualScriptLocalVarSet.set_var_type(randi() % Autoload.RANGE - Autoload.RANGE / 2)

		else: #RANDI
			if randi() % 2 == 1:
				q_VisualScriptLocalVarSet.set_var_name("Piotrek")
			if randi() % 2 == 1:
				q_VisualScriptLocalVarSet.set_var_type(randi() % Autoload.RANGE - Autoload.RANGE / 2)
