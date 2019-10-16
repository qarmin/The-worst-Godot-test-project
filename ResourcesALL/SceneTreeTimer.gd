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
#		var q_SceneTreeTimer : SceneTreeTimer = SceneTreeTimer.new()
#
#		q_SceneTreeTimer.set_time_left(Autoload.get_float())
#
