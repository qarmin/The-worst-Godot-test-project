extends Node2D

var q_AudioEffectLowShelfFilter: AudioEffectLowShelfFilter = AudioEffectLowShelfFilter.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AudioEffectLowShelfFilter, true)


func nodeFunction(q_AudioEffectLowShelfFilter: AudioEffectLowShelfFilter, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_AudioEffectLowShelfFilter = AudioEffectLowShelfFilter.new()
	if randi() % 2 == 1:
		AutoResourcesAudioEffectFilter.nodeFunction(q_AudioEffectLowShelfFilter)
