extends Node2D

var q_VisualShaderNodeColorFunc : VisualShaderNodeColorFunc = VisualShaderNodeColorFunc.new()
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
			q_VisualShaderNodeColorFunc = VisualShaderNodeColorFunc.new()
		
		
		if randi() % 2 == 1:
			q_VisualShaderNodeColorFunc.set_function(Autoload.get_int()) #Function
