extends Node2D
#MISSING
#var q_VisualShaderNodeScalarOp : VisualShaderNodeScalarOp = VisualShaderNodeScalarOp.new()
#
#onready var counter : float = Autoload.get_rand_time()
#
#func alt_process(delta) -> void:
#	counter -= delta
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#		nodeFunction(q_VisualShaderNodeScalarOp,true)
#
#func nodeFunction(q_VisualShaderNodeScalarOp : VisualShaderNodeScalarOp, can_reset : bool = false) -> void:
#
#	if can_reset:
#		if randi() % 2 == 1:
#			q_VisualShaderNodeScalarOp = VisualShaderNodeScalarOp.new()
#	if randi() % 2 == 1:
#		AutoResourcesVisualShaderNode.nodeFunction(q_VisualShaderNodeScalarOp)
#
#	if randi() % 2 == 1:
#		q_VisualShaderNodeScalarOp.set_operator(Autoload.get_int()) #Operator
