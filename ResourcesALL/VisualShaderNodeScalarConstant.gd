extends Node2D
#
#var q_VisualShaderNodeScalarConstant : VisualShaderNodeScalarConstant = VisualShaderNodeScalarConstant.new()
#
#@onready var counter : float = Autoload.get_rand_time()
#
#func alt_process(delta) -> void:
#	counter -= delta
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#		nodeFunction(q_VisualShaderNodeScalarConstant,true)
#
#func nodeFunction(q_VisualShaderNodeScalarConstant : VisualShaderNodeScalarConstant, can_reset : bool = false) -> void:
#
#	if can_reset:
#		if randi() % 2 == 1:
#			q_VisualShaderNodeScalarConstant = VisualShaderNodeScalarConstant.new()
#	if randi() % 2 == 1:
#		AutoResourcesVisualShaderNode.nodeFunction(q_VisualShaderNodeScalarConstant)
#
#	if randi() % 2 == 1:
#		q_VisualShaderNodeScalarConstant.set_constant(Autoload.get_bool())
