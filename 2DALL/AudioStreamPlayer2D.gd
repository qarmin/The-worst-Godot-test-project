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
			set_stream(Autoload.loadA("res://RES/AudioStreamGenerator.tres"))
		if randi() % 2 == 1:
			set_volume_db(randf() * Autoload.RANGE - Autoload.RANGE / 2)
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
			set_attenuation(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_bus("ŹcŻΩŒno")
		if randi() % 2 == 1:
			set_area_mask(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			play()
		if randi() % 2 == 1:
			seek(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			stop()
