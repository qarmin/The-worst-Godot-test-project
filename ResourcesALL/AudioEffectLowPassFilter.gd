extends Node2D

var q_AudioEffectLowPassFilter : AudioEffectLowPassFilter = AudioEffectLowPassFilter.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AudioEffectLowPassFilter,true)

func nodeFunction(q_AudioEffectLowPassFilter : AudioEffectLowPassFilter, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_AudioEffectLowPassFilter = AudioEffectLowPassFilter.new()
	if randi() % 2 == 1:
		AutoResourcesAudioEffectFilter.nodeFunction(q_AudioEffectLowPassFilter)
