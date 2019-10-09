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
			
		var q_VisualScriptMathConstant : VisualScriptMathConstant = VisualScriptMathConstant.new()
		if !Autoload.RANDI:
			
			q_VisualScriptMathConstant.set_math_constant(randi() % q_VisualScriptMathConstant.MATH_CONSTANT_MAX)
			
			if Autoload.WRONG_BUGS:
				q_VisualScriptMathConstant.set_math_constant(randi() % Autoload.RANGE - Autoload.RANGE / 2)

		else: #RANDI
			if randi() % 2 == 1:
				q_VisualScriptMathConstant.set_math_constant(randi() % Autoload.RANGE - Autoload.RANGE / 2)
