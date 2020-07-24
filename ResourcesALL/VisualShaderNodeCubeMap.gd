extends Node2D
# MISSING
#var q_VisualShaderNodeCubeMap : VisualShaderNodeCubeMap = VisualShaderNodeCubeMap.new()
#
#@onready var counter : float = Autoload.get_rand_time()
#
#func alt_process(delta) -> void:
#	counter -= delta
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#		nodeFunction(q_VisualShaderNodeCubeMap,true)
#
#func nodeFunction(q_VisualShaderNodeCubeMap : VisualShaderNodeCubeMap, can_reset : bool = false) -> void:
#
#	if can_reset:
#		if randi() % 2 == 1:
#			q_VisualShaderNodeCubeMap = VisualShaderNodeCubeMap.new()
#	if randi() % 2 == 1:
#		AutoResourcesVisualShaderNode.nodeFunction(q_VisualShaderNodeCubeMap)
#
#	var temp_CubeMap : CubeMap = CubeMap.new()
#	AutoResourcesCubeMap.nodeFunction(temp_CubeMap)
#
#	if randi() % 2 == 1:
#		q_VisualShaderNodeCubeMap.set_cube_map(temp_CubeMap)
#	if randi() % 2 == 1:
#		q_VisualShaderNodeCubeMap.set_texture_type(Autoload.get_int()) #TextureType
