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
				
		var q_VisualShaderNodeGlobalExpression : VisualShaderNodeGlobalExpression = VisualShaderNodeGlobalExpression.new()
		if !Autoload.RANDI:
			
			q_VisualShaderNodeGlobalExpression.editable = bool(randi()%2)
			
			if Autoload.WRONG_BUGS:
				q_VisualShaderNodeGlobalExpression.editable = bool(randi()%2)

		else: #RANDI
			if randi() % 2 == 1:
				q_VisualShaderNodeGlobalExpression.editable = bool(randi()%2)
