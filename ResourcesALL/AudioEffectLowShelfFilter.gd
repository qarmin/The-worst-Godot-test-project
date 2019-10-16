extends Node2D

onready var counter : float = Autoload.get_rand_time()

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
#		var q_AudioEffectLowShelfFilter : AudioEffectLowShelfFilter = AudioEffectLowShelfFilter.new()
#
#			if randi() % 2 == 1:
