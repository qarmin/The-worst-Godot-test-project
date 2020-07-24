extends Node2D

var q_AudioEffectLimiter: AudioEffectLimiter = AudioEffectLimiter.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AudioEffectLimiter, true)


func nodeFunction(q_AudioEffectLimiter: AudioEffectLimiter, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_AudioEffectLimiter = AudioEffectLimiter.new()
	if randi() % 2 == 1:
		AutoResourcesAudioEffect.nodeFunction(q_AudioEffectLimiter)

	if randi() % 2 == 1:
		q_AudioEffectLimiter.set_ceiling_db(Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioEffectLimiter.set_threshold_db(Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioEffectLimiter.set_soft_clip_db(Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioEffectLimiter.set_soft_clip_ratio(Autoload.get_float())
