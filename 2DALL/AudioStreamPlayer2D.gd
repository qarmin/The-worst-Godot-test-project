extends AudioStreamPlayer2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq

	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

		if randi() % 2 == 1:
			set_stream(Autoload.loadA("AudioStreamGenerator.tres"))
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
			set_max_distance(Autoload.get_float())
		if randi() % 2 == 1:
			set_attenuation(Autoload.get_float())
		if randi() % 2 == 1:
			set_bus(Autoload.get_string())
		if randi() % 2 == 1:
			set_area_mask(Autoload.get_int())
		if randi() % 2 == 1:
			play()
		if randi() % 2 == 1:
			seek(Autoload.get_float())
		if randi() % 2 == 1:
			stop()
