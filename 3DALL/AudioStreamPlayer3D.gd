extends AudioStreamPlayer3D

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_stream(Autoload.loadA("AudioStreamGenerator.tres"))
		if randi() % 2 == 1:
			set_attenuation_model(Autoload.get_int()) # AttenuationModel
		if randi() % 2 == 1:
			set_unit_db(Autoload.get_float())
		if randi() % 2 == 1:
			set_unit_size(Autoload.get_float())
		if randi() % 2 == 1:
			set_max_db(Autoload.get_float())
		if randi() % 2 == 1:
			set_pitch_scale(Autoload.get_float())
		if randi() % 2 == 1:
			_set_playing(Autoload.get_bool())
		if randi() % 2 == 1:
			set_autoplay(Autoload.get_bool())
		if randi() % 2 == 1:
			set_stream_paused(Autoload.get_bool())
		if randi() % 2 == 1:
			set_max_distance(Autoload.get_float())
		if randi() % 2 == 1:
			set_out_of_range_mode(Autoload.get_int()) #OutOfRangeMode
		if randi() % 2 == 1:
			set_bus(Autoload.get_string())
		if randi() % 2 == 1:
			set_area_mask(Autoload.get_int())
		if randi() % 2 == 1:
			set_emission_angle_enabled(Autoload.get_bool())
		if randi() % 2 == 1:
			set_emission_angle(Autoload.get_float())
		if randi() % 2 == 1:
			set_emission_angle_filter_attenuation_db(Autoload.get_float())
		if randi() % 2 == 1:
			set_attenuation_filter_cutoff_hz(Autoload.get_float())
		if randi() % 2 == 1:
			set_attenuation_filter_db(Autoload.get_float())
		if randi() % 2 == 1:
			set_doppler_tracking(Autoload.get_int()) # DopplerTracking

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
