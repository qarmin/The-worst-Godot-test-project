extends Node2D

var q_VisualShaderNodeTexture : VisualShaderNodeTexture = VisualShaderNodeTexture.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualShaderNodeTexture = VisualShaderNodeTexture.new()

		if randi() % 2 == 1:
			q_VisualShaderNodeTexture.set_source(Autoload.get_int()) #Source
		if randi() % 2 == 1:
			q_VisualShaderNodeTexture.set_texture(CurveTexture.new())
		if randi() % 2 == 1:
			q_VisualShaderNodeTexture.set_texture_type(Autoload.get_int()) # TextureType
