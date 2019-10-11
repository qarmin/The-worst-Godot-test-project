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

		if randi() % 2 == 1:
			set_stream(AudioStreamGenerator.new())
		if randi() % 2 == 1:
			set_attenuation_model(Autoload.get_randi()) # AttenuationModel
		if randi() % 2 == 1:
			set_unit_db(Autoload.get_randf())
		if randi() % 2 == 1:
			set_unit_size(Autoload.get_randf())
		if randi() % 2 == 1:
			set_max_db(Autoload.get_randf())
		if randi() % 2 == 1:
			set_pitch_scale(Autoload.get_randf())
		if randi() % 2 == 1:
			_set_playing(bool(randi()%2))
		if randi() % 2 == 1:
			set_autoplay(bool(randi()%2))
		if randi() % 2 == 1:
			set_stream_paused(bool(randi()%2))
		if randi() % 2 == 1:
			set_max_distance(Autoload.get_randf())
		if randi() % 2 == 1:
			set_out_of_range_mode(Autoload.get_randi()) #OutOfRangeMode
		if randi() % 2 == 1:
			set_bus(str(Autoload.get_string()))
		if randi() % 2 == 1:
			set_area_mask(Autoload.get_randi())
		if randi() % 2 == 1:
			set_emission_angle_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			set_emission_angle(Autoload.get_randf())
		if randi() % 2 == 1:
			set_emission_angle_filter_attenuation_db(Autoload.get_randf())
		if randi() % 2 == 1:
			set_attenuation_filter_cutoff_hz(Autoload.get_randf())
		if randi() % 2 == 1:
			set_attenuation_filter_db(Autoload.get_randf())
		if randi() % 2 == 1:
			set_doppler_tracking(Autoload.get_randi()) # DopplerTracking
			
		if randi() % 2 == 1:
			qq += str(get_playback_position())
		if randi() % 2 == 1:
			qq += str(get_stream_playback())
		if randi() % 2 == 1:
			play()
		if randi() % 2 == 1:
			seek(Autoload.get_randf())
		if randi() % 2 == 1:
			stop()
