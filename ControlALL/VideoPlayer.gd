extends VideoPlayer

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
			set_audio_track(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_stream(Autoload.loadA("res://RES/VideoStreamWebm.tres"))
		if randi() % 2 == 1:
			set_volume_db(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_volume(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_autoplay(bool(randi()%2))
		if randi() % 2 == 1:
			set_paused(bool(randi()%2))
		if randi() % 2 == 1:
			set_expand(bool(randi()%2))
		if randi() % 2 == 1:
			set_buffering_msec(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_stream_position(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_bus(str(randf() * Autoload.RANGE - Autoload.RANGE / 2))
			
		if randi() % 2 == 1:
			qq += str(get_stream_name())
		if randi() % 2 == 1:
			qq += str(get_video_texture())
		if randi() % 2 == 1:
			qq += str(is_playing())
		if randi() % 2 == 1:
			play()
		if randi() % 2 == 1:
			stop()
