extends Node2D

var q_AudioEffectAmplify: AudioEffectAmplify = AudioEffectAmplify.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AudioEffectAmplify, true)


func nodeFunction(q_AudioEffectAmplify: AudioEffectAmplify, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_AudioEffectAmplify = AudioEffectAmplify.new()
	if randi() % 2 == 1:
		AutoResourcesAudioEffect.nodeFunction(q_AudioEffectAmplify)
