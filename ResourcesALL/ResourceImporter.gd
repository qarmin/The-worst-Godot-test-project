extends Node2D

#var q_ResourceImporter : ResourceImporter = ResourceImporter.new()
#
#@onready var counter : float = Autoload.get_rand_time()
#
#func alt_process(delta) -> void:
#	counter -= delta
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#		nodeFunction(q_ResourceImporter,true)
#
#func nodeFunction(q_ResourceImporter : ResourceImporter, can_reset : bool = false) -> void:
#
#	if can_reset:
#		if randi() % 2 == 1:
#			q_ResourceImporter = ResourceImporter.new()
#	if randi() % 2 == 1:
#		AutoResourcesReference.nodeFunction(q_ResourceImporter)
