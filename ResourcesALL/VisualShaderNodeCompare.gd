extends Node2D

var q_VisualShaderNodeCompare : VisualShaderNodeCompare = VisualShaderNodeCompare.new()
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
			q_VisualShaderNodeCompare = VisualShaderNodeCompare.new()
		
		
		if randi() % 2 == 1:
			q_VisualShaderNodeCompare.set_comparsion_type(Autoload.get_randi()) # ComparsionType
		if randi() % 2 == 1:
			q_VisualShaderNodeCompare.set_function(Autoload.get_randi()) # Function
		if randi() % 2 == 1:
			q_VisualShaderNodeCompare.set_condition(Autoload.get_randi()) # Condition
