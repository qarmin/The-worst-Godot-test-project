extends AudioStreamPlayer3D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if !Autoload.RANDI:
			
			#set_stream(AudioStream.new())
			set_attenuation_model(randi() % 4) # AttenuationModel
			set_unit_db(randf() * 50)
			set_unit_size(randf() * 50)
			set_max_db(randf() * 50)
			set_pitch_scale(randf() * 50)
			_set_playing(bool(randi()%2))
			set_autoplay(bool(randi()%2))
			set_stream_paused(bool(randi()%2))
			set_max_distance(randf() * 50)
			set_out_of_range_mode(randi() % 2) #OutOfRangeMode
			set_bus(get_bus())
			set_area_mask(randi()%50)
			set_emission_angle_enabled(bool(randi()%2))
			set_emission_angle(randf() * 50)
			set_emission_angle_filter_attenuation_db(randf() * 50)
			set_attenuation_filter_cutoff_hz(randf() * 50)
			set_attenuation_filter_db(randf() * 50)
			set_doppler_tracking(randi() % 3) # DopplerTracking
			
			qq += str(get_playback_position())
			qq += str(get_stream_playback())
			play()
			seek(randf() * 50)
			stop()
			
			if Autoload.WRONG_BUGS:
			
				set_stream(AudioStream.new())
				set_attenuation_model(randi() % Autoload.RANGE - Autoload.RANGE / 2) # AttenuationModel
				set_unit_db(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_unit_size(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_max_db(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_pitch_scale(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				_set_playing(bool(randi()%2))
				set_autoplay(bool(randi()%2))
				set_stream_paused(bool(randi()%2))
				set_max_distance(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_out_of_range_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #OutOfRangeMode
				set_bus(str("sgasfqw"))
				set_area_mask(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set_emission_angle_enabled(bool(randi()%2))
				set_emission_angle(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_emission_angle_filter_attenuation_db(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_attenuation_filter_cutoff_hz(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_attenuation_filter_db(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_doppler_tracking(randi() % Autoload.RANGE - Autoload.RANGE / 2) # DopplerTracking
				
				qq += str(get_playback_position())
				qq += str(get_stream_playback())
				play()
				seek(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				stop()
	
		else: #RANDI
			if randi() % 2 == 1:
				set_stream(AudioStream.new())
			if randi() % 2 == 1:
				set_attenuation_model(randi() % Autoload.RANGE - Autoload.RANGE / 2) # AttenuationModel
			if randi() % 2 == 1:
				set_unit_db(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_unit_size(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_max_db(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_pitch_scale(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				_set_playing(bool(randi()%2))
			if randi() % 2 == 1:
				set_autoplay(bool(randi()%2))
			if randi() % 2 == 1:
				set_stream_paused(bool(randi()%2))
			if randi() % 2 == 1:
				set_max_distance(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_out_of_range_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #OutOfRangeMode
			if randi() % 2 == 1:
				set_bus(str("sgasfqw"))
			if randi() % 2 == 1:
				set_area_mask(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_emission_angle_enabled(bool(randi()%2))
			if randi() % 2 == 1:
				set_emission_angle(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_emission_angle_filter_attenuation_db(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_attenuation_filter_cutoff_hz(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_attenuation_filter_db(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_doppler_tracking(randi() % Autoload.RANGE - Autoload.RANGE / 2) # DopplerTracking
				
			if randi() % 2 == 1:
				qq += str(get_playback_position())
			if randi() % 2 == 1:
				qq += str(get_stream_playback())
			if randi() % 2 == 1:
				play()
			if randi() % 2 == 1:
				seek(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				stop()
