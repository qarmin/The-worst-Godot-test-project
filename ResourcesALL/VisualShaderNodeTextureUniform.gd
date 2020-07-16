extends Node2D

var q_VisualShaderNodeTextureUniform: VisualShaderNodeTextureUniform = VisualShaderNodeTextureUniform.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualShaderNodeTextureUniform, true)


func nodeFunction(q_VisualShaderNodeTextureUniform: VisualShaderNodeTextureUniform, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_VisualShaderNodeTextureUniform = VisualShaderNodeTextureUniform.new()
	if randi() % 2 == 1:
#		AutoResourcesVisualShaderNodeUniform.nodeFunction(q_VisualShaderNodeTextureUniform)
		AutoResourcesVisualShaderNode.nodeFunction(q_VisualShaderNodeTextureUniform)

	if randi() % 2 == 1:
		q_VisualShaderNodeTextureUniform.set_texture_type(Autoload.get_int())  # Texture
	if randi() % 2 == 1:
		q_VisualShaderNodeTextureUniform.set_color_default(Autoload.get_int())  # ColorDefault
