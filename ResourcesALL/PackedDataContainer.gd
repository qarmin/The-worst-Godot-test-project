extends Node2D
#BUG
#var q_PackedDataContainer : PackedDataContainer = PackedDataContainer.new()
#
#onready var counter : float = Autoload.get_rand_time()
#
#func alt_process(delta) -> void:
#	counter -= delta
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#		nodeFunction(q_PackedDataContainer,true)
#
#func nodeFunction(q_PackedDataContainer : PackedDataContainer, can_reset : bool = false) -> void:
#
#	if can_reset:
#		if randi() % 2 == 1:
#			q_PackedDataContainer = PackedDataContainer.new()
#	if randi() % 2 == 1:
#		AutoResourcesResource.nodeFunction(q_PackedDataContainer)
		
# BUG	if randi() % 2 == 1:
#		q_PackedDataContainer.pack(String(Autoload.get_string()))
#	if randi() % 2 == 1:
#		q_PackedDataContainer.size()
