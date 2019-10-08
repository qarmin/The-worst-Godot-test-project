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
		
			var q_VisualScriptConstant : VisualScriptConstant = VisualScriptConstant.new()
			
			q_VisualScriptConstant.set_constant_type(randi()%27) #VARIANT_MAX
			q_VisualScriptConstant.set_constant_value(Vector2(randf() * 50,randf() * 50))
			
			if Autoload.WRONG_BUGS:
				q_VisualScriptConstant.set_constant_type(randi() % Autoload.RANGE - Autoload.RANGE / 2) #VARIANT_MAX
				q_VisualScriptConstant.set_constant_value(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
