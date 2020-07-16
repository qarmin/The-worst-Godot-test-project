extends Node2D

var q_VisualShaderNodeTexture: VisualShaderNodeTexture = VisualShaderNodeTexture.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualShaderNodeTexture, true)


func nodeFunction(q_VisualShaderNodeTexture: VisualShaderNodeTexture, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_VisualShaderNodeTexture = VisualShaderNodeTexture.new()
	if randi() % 2 == 1:
		AutoResourcesVisualShaderNode.nodeFunction(q_VisualShaderNodeTexture)

	### START TEMP
	var temp_CurveTexture: CurveTexture = CurveTexture.new()
	AutoResourcesCurveTexture.nodeFunction(temp_CurveTexture)

	### END TEMP

	if randi() % 2 == 1:
		q_VisualShaderNodeTexture.set_source(Autoload.get_int())  #Source
	if randi() % 2 == 1:
		q_VisualShaderNodeTexture.set_texture(temp_CurveTexture)
	if randi() % 2 == 1:
		q_VisualShaderNodeTexture.set_texture_type(Autoload.get_int())  # TextureType
