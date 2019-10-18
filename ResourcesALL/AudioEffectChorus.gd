extends Node2D

var q_AudioEffectChorus : AudioEffectChorus = AudioEffectChorus.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_AudioEffectChorus = AudioEffectChorus.new()

		if randi() % 2 == 1:
			q_AudioEffectChorus.set_voice_count(Autoload.get_int())
		if randi() % 2 == 1:
			q_AudioEffectChorus.set_dry(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectChorus.set_wet(Autoload.get_float())

		if randi() % 2 == 1:
			q_AudioEffectChorus.set("voice/" + str(Autoload.get_int()) + "/delay_ms",Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectChorus.set("voice/" + str(Autoload.get_int()) + "/rate_hz",Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectChorus.set("voice/" + str(Autoload.get_int()) + "/depth_ms",Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectChorus.set("voice/" + str(Autoload.get_int()) + "/level_db",Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectChorus.set("voice/" + str(Autoload.get_int()) + "/cutoff_hz",Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectChorus.set("voice/" + str(Autoload.get_int()) + "/pan",Autoload.get_float())
