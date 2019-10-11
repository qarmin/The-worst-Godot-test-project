extends Node2D

var q_VisualShaderNodeTexture : VisualShaderNodeTexture = VisualShaderNodeTexture.new()
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
			q_VisualShaderNodeTexture = VisualShaderNodeTexture.new()
			
		
		if randi() % 2 == 1:
			q_VisualShaderNodeTexture.set_source(Autoload.get_randi()) #Source
		if randi() % 2 == 1:
			q_VisualShaderNodeTexture.set_texture(CurveTexture.new())
		if randi() % 2 == 1:
			q_VisualShaderNodeTexture.set_texture_type(Autoload.get_randi()) # TextureType
