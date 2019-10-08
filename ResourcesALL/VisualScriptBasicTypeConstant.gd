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
		if !Autoload.RANDI:
			
			var q_VisualScriptBasicTypeConstant : VisualScriptBasicTypeConstant = VisualScriptBasicTypeConstant.new()
			
			q_VisualScriptBasicTypeConstant.set_basic_type(randi()%50)
			q_VisualScriptBasicTypeConstant.set_basic_type_constant("Vector3")
			
			if Autoload.WRONG_BUGS:
				q_VisualScriptBasicTypeConstant.set_basic_type(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_VisualScriptBasicTypeConstant.set_basic_type_constant("Vector3")
