extends Node2D

var q_VisualShaderNodeTextureUniform : VisualShaderNodeTextureUniform = VisualShaderNodeTextureUniform.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualShaderNodeTextureUniform = VisualShaderNodeTextureUniform.new()

		if randi() % 2 == 1:
			q_VisualShaderNodeTextureUniform.set_texture_type(Autoload.get_int()) # Texture
		if randi() % 2 == 1:
			q_VisualShaderNodeTextureUniform.set_color_default(Autoload.get_int()) # ColorDefault
