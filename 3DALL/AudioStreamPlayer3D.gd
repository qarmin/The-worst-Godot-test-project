extends AudioStreamPlayer3D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_Spatial(self)
		nodeFunction(self)

func nodeFunction(q_AudioStreamPlayer3D : AudioStreamPlayer3D) -> void:

	if randi() % 2 == 1:
		q_AudioStreamPlayer3D.set_stream(Autoload.loadA("AudioStreamGenerator.tres"))
	if randi() % 2 == 1:
		q_AudioStreamPlayer3D.set_attenuation_model(Autoload.get_int()) # AttenuationModel
	if randi() % 2 == 1:
		q_AudioStreamPlayer3D.set_unit_db(Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioStreamPlayer3D.set_unit_size(Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioStreamPlayer3D.set_max_db(Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioStreamPlayer3D.set_pitch_scale(Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioStreamPlayer3D._set_playing(Autoload.get_bool())
	if randi() % 2 == 1:
		q_AudioStreamPlayer3D.set_autoplay(Autoload.get_bool())
	if randi() % 2 == 1:
		q_AudioStreamPlayer3D.set_stream_paused(Autoload.get_bool())
	if randi() % 2 == 1:
		q_AudioStreamPlayer3D.set_max_distance(Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioStreamPlayer3D.set_out_of_range_mode(Autoload.get_int()) #OutOfRangeMode
	if randi() % 2 == 1:
		q_AudioStreamPlayer3D.set_bus(Autoload.get_string())
	if randi() % 2 == 1:
		q_AudioStreamPlayer3D.set_area_mask(Autoload.get_int())
	if randi() % 2 == 1:
		q_AudioStreamPlayer3D.set_emission_angle_enabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_AudioStreamPlayer3D.set_emission_angle(Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioStreamPlayer3D.set_emission_angle_filter_attenuation_db(Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioStreamPlayer3D.set_attenuation_filter_cutoff_hz(Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioStreamPlayer3D.set_attenuation_filter_db(Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioStreamPlayer3D.set_doppler_tracking(Autoload.get_int()) # DopplerTracking

	if randi() % 2 == 1:
		q_AudioStreamPlayer3D.get_playback_position()
	if randi() % 2 == 1:
		q_AudioStreamPlayer3D.get_stream_playback()
	if randi() % 2 == 1:
		q_AudioStreamPlayer3D.play()
	if randi() % 2 == 1:
		q_AudioStreamPlayer3D.seek(Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioStreamPlayer3D.stop()
