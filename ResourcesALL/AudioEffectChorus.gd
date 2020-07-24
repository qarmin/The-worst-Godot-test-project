extends Node2D

var q_AudioEffectChorus: AudioEffectChorus = AudioEffectChorus.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AudioEffectChorus, true)


func nodeFunction(q_AudioEffectChorus: AudioEffectChorus, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_AudioEffectChorus = AudioEffectChorus.new()
	if randi() % 2 == 1:
		AutoResourcesAudioEffect.nodeFunction(q_AudioEffectChorus)

	if randi() % 2 == 1:
		q_AudioEffectChorus.set_voice_count(Autoload.get_int())
	if randi() % 2 == 1:
		q_AudioEffectChorus.set_dry(Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioEffectChorus.set_wet(Autoload.get_float())

	if randi() % 2 == 1:
		q_AudioEffectChorus.set("voice/" + Autoload.get_string() + "/delay_ms", Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioEffectChorus.set("voice/" + Autoload.get_string() + "/rate_hz", Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioEffectChorus.set("voice/" + Autoload.get_string() + "/depth_ms", Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioEffectChorus.set("voice/" + Autoload.get_string() + "/level_db", Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioEffectChorus.set("voice/" + Autoload.get_string() + "/cutoff_hz", Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioEffectChorus.set("voice/" + Autoload.get_string() + "/pan", Autoload.get_float())
