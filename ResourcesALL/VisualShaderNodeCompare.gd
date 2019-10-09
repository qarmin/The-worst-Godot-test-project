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
		
		var q_VisualShaderNodeCompare : VisualShaderNodeCompare = VisualShaderNodeCompare.new()
		if !Autoload.RANDI:
			
			q_VisualShaderNodeCompare.set_comparsion_type(randi() % 4) # ComparsionType
			q_VisualShaderNodeCompare.set_function(randi()%6) # Function
			q_VisualShaderNodeCompare.set_condition(randi() % 2) # Condition
			if Autoload.WRONG_BUGS:
				q_VisualShaderNodeCompare.set_comparsion_type(randi()%Autoload.RANGE - Autoload.RANGE / 2) # ComparsionType
				q_VisualShaderNodeCompare.set_function(randi()%Autoload.RANGE - Autoload.RANGE / 2) # Function
				q_VisualShaderNodeCompare.set_condition(randi()%Autoload.RANGE - Autoload.RANGE / 2) # Condition

		else: #RANDI
			if randi() % 2 == 1:
				q_VisualShaderNodeCompare.set_comparsion_type(randi()%Autoload.RANGE - Autoload.RANGE / 2) # ComparsionType
			if randi() % 2 == 1:
				q_VisualShaderNodeCompare.set_function(randi()%Autoload.RANGE - Autoload.RANGE / 2) # Function
			if randi() % 2 == 1:
				q_VisualShaderNodeCompare.set_condition(randi()%Autoload.RANGE - Autoload.RANGE / 2) # Condition
