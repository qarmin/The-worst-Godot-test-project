extends Node2D
#
#var q_Reference : Reference = Reference.new()
onready var counter : float = Autoload.get_rand_time()

#
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
#
#		if randi() % 2 == 1:
#			q_Reference.unreference()
#			q_Reference = Reference.new()
#
#		if randi() % 2 == 1:
#			Autoload.qq = str(q_Reference.init_ref())
#		if randi() % 2 == 1:
#			Autoload.qq = str(q_Reference.reference())
#		if randi() % 2 == 1:
#			Autoload.qq = str(q_Reference.unreference())
#
#
#func delete_node():
#	q_Reference.unreference()
