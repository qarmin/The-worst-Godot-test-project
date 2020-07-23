extends Node2D

#BUG #GH#40633
#var q_HeightMapShape3D: HeightMapShape3D = HeightMapShape3D.new()
#
#onready var counter: float = Autoload.get_rand_time()
#
#
#func alt_process(delta) -> void:
#	counter -= delta
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#		nodeFunction(q_HeightMapShape3D, true)
#
#
#func nodeFunction(q_HeightMapShape3D: HeightMapShape3D, can_reset: bool = false) -> void:
#	if can_reset:
#		if randi() % 2 == 1:
#			q_HeightMapShape3D = HeightMapShape3D.new()
#	if randi() % 2 == 1:
#		AutoResourcesShape.nodeFunction(q_HeightMapShape3D)
#
#	if randi() % 2 == 1:
#		q_HeightMapShape3D.set_map_width(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_HeightMapShape3D.set_map_depth(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_HeightMapShape3D.set_map_data(Autoload.get_packedfloat32array())
