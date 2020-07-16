extends AudioStreamPlayer2D

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_AudioStreamPlayer2D: AudioStreamPlayer2D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_AudioStreamPlayer2D)
		AutoObjects.A_Node(q_AudioStreamPlayer2D)
		AutoObjects.A_CanvasItem(q_AudioStreamPlayer2D)
		AutoObjects.A_Node2D(q_AudioStreamPlayer2D)

	### START TEMP
	var temp_AudioStreamGenerator: AudioStreamGenerator = AudioStreamGenerator.new()
#?## TOO SLOW	AutoResourcesAudioStreamGenerator.nodeFunction(temp_AudioStreamGenerator)

	### END TEMP

	if randi() % 2 == 1:
		q_AudioStreamPlayer2D.set_stream(temp_AudioStreamGenerator)
	if randi() % 2 == 1:
		q_AudioStreamPlayer2D.set_volume_db(Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioStreamPlayer2D.set_pitch_scale(Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioStreamPlayer2D._set_playing(Autoload.get_bool())
	if randi() % 2 == 1:
		q_AudioStreamPlayer2D.set_autoplay(Autoload.get_bool())
	if randi() % 2 == 1:
		q_AudioStreamPlayer2D.set_stream_paused(Autoload.get_bool())
	if randi() % 2 == 1:
		q_AudioStreamPlayer2D.set_max_distance(Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioStreamPlayer2D.set_attenuation(Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioStreamPlayer2D.set_bus(Autoload.get_string())
	if randi() % 2 == 1:
		q_AudioStreamPlayer2D.set_area_mask(Autoload.get_int())

	if randi() % 2 == 1:
		q_AudioStreamPlayer2D.get_playback_position()
	if randi() % 2 == 1:
		q_AudioStreamPlayer2D.get_stream_playback()

	if randi() % 2 == 1:
		q_AudioStreamPlayer2D.play(Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioStreamPlayer2D.seek(Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioStreamPlayer2D.stop()
