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
		
		var q_VisualShaderNodeTexture : VisualShaderNodeTexture = VisualShaderNodeTexture.new()
		
		q_VisualShaderNodeTexture.set_source(randi() % 4) #Source
		q_VisualShaderNodeTexture.set_texture(CurveTexture.new())
		q_VisualShaderNodeTexture.set_texture_type(randi() % 3) # TextureType
		
		if Autoload.WRONG_BUGS:
			q_VisualShaderNodeTexture.set_source(randi() % 1000 - 500) #Source
			q_VisualShaderNodeTexture.set_texture(CurveTexture.new())
			q_VisualShaderNodeTexture.set_texture_type(randi() % 1000 - 500) # TextureType
