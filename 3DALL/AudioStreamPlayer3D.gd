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
