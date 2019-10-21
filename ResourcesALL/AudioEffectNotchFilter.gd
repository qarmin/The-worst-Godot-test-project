extends Node2D

var q_AudioEffectLowShelfFilter : AudioEffectLowShelfFilter = AudioEffectLowShelfFilter.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AudioEffectNotchFilter,true)

func nodeFunction(q_AudioEffectNotchFilter : AudioEffectNotchFilter, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_AudioEffectNotchFilter = AudioEffectNotchFilter.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_AudioEffectNotchFilter)
