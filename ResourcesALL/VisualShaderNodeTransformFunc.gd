extends Node2D

var q_VisualShaderNodeTransformFunc : VisualShaderNodeTransformFunc = VisualShaderNodeTransformFunc.new()
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
			q_VisualShaderNodeTransformFunc = VisualShaderNodeTransformFunc.new()
		
		
		if randi() % 2 == 1:
			q_VisualShaderNodeTransformFunc.set_function(randi() % Autoload.RANGE - Autoload.RANGE / 2) # Function
