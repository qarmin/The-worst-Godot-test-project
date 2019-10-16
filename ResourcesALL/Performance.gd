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
#		var q_Performance : Performance = Performance.new()
#
#		Autoload.qq = str(q_Performance.get_monitor(Autoload.get_int())
#
