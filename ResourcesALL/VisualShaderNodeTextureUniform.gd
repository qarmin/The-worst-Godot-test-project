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
		
			var q_VisualShaderNodeTextureUniform : VisualShaderNodeTextureUniform = VisualShaderNodeTextureUniform.new()
			
			q_VisualShaderNodeTextureUniform.set_texture_type(randi() % 4) # Texture
			q_VisualShaderNodeTextureUniform.set_color_default(randi() % 2) # ColorDefault
			
			if Autoload.WRONG_BUGS:
				q_VisualShaderNodeTextureUniform.set_texture_type(randi() % Autoload.RANGE - Autoload.RANGE / 2) # Texture
				q_VisualShaderNodeTextureUniform.set_color_default(randi() % Autoload.RANGE - Autoload.RANGE / 2) # ColorDefault
