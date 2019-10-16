extends Node2D

var q_VisualShaderNodeCubeMap : VisualShaderNodeCubeMap = VisualShaderNodeCubeMap.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualShaderNodeCubeMap = VisualShaderNodeCubeMap.new()

		if randi() % 2 == 1:
			q_VisualShaderNodeCubeMap.set_cube_map(CubeMap.new())
		if randi() % 2 == 1:
			q_VisualShaderNodeCubeMap.set_texture_type(Autoload.get_int()) #TextureType
