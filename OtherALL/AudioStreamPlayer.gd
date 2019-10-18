extends AudioStreamPlayer

onready var counter : float = Autoload.get_rand_time()

	queue_free()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_stream(AudioStream.new())
		if randi() % 2 == 1:
			set_volume_db(Autoload.get_float())
		if randi() % 2 == 1:
			set_pitch_scale(Autoload.get_float())
		if randi() % 2 == 1:
			_set_playing(Autoload.get_bool())
		if randi() % 2 == 1:
			set_autoplay(Autoload.get_bool())
		if randi() % 2 == 1:
			set_stream_paused(Autoload.get_bool())
		if randi() % 2 == 1:
			set_mix_target(Autoload.get_int())# MixTarget
		if randi() % 2 == 1:
			set_bus(Autoload.get_string())

		if randi() % 2 == 1:
			Autoload.qq = str(get_playback_position())
		if randi() % 2 == 1:
			Autoload.qq = str(get_stream_playback())

		if randi() % 2 == 1:
			play()
		if randi() % 2 == 1:
			seek(Autoload.get_float())
		if randi() % 2 == 1:
			stop()
