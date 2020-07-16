extends Node2D

var q_AudioEffectEQ6: AudioEffectEQ6 = AudioEffectEQ6.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AudioEffectEQ6, true)


func nodeFunction(q_AudioEffectEQ6: AudioEffectEQ6, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_AudioEffectEQ6 = AudioEffectEQ6.new()
	if randi() % 2 == 1:
		AutoResourcesAudioEffectEQ.nodeFunction(q_AudioEffectEQ6)
