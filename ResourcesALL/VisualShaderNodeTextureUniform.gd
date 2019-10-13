extends Node2D

var q_VisualShaderNodeTextureUniform : VisualShaderNodeTextureUniform = VisualShaderNodeTextureUniform.new()
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
			q_VisualShaderNodeTextureUniform = VisualShaderNodeTextureUniform.new()
		
		
		if randi() % 2 == 1:
			q_VisualShaderNodeTextureUniform.set_texture_type(Autoload.get_int()) # Texture
		if randi() % 2 == 1:
			q_VisualShaderNodeTextureUniform.set_color_default(Autoload.get_int()) # ColorDefault
