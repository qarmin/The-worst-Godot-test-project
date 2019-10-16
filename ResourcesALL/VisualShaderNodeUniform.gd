extends Node2D

onready var counter : float = Autoload.get_rand_time()

#
#
#
#func _process(delta) -> void:
#	counter -= delta
#
#
#
#	if counter <= 0:
		counter = Autoload.get_rand_time()
#
#
#		var q_VisualShaderNodeUniform : VisualShaderNodeUniform = VisualShaderNodeUniform.new()
#
#		q_VisualShaderNodeUniform.set_uniform_name(Autoload.get_string())
#
