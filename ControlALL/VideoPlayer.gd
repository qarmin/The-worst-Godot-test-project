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
		
		set_audio_track(randi()%50)
		#set_stream(load("res://RES/VideoStreamWebm.tres"))
		set_volume_db(randf() * 50)
		set_volume(randf() * 50)
		set_autoplay(bool(randi()%2))
		set_paused(bool(randi()%2))
		set_expand(bool(randi()%2))
		set_buffering_msec(randi()%50)
		set_stream_position(randf() * 50)
		set_bus(str(randf() * 50))
		
		qq += str(get_stream_name())
		qq += str(get_video_texture())
		qq += str(is_playing())
		play()
		stop()
		
		if Autoload.WRONG_BUGS:
			set_audio_track(randi() % 1000 - 500)
			set_stream(load("res://RES/VideoStreamWebm.tres"))
			set_volume_db(randf() * 1000 - 500)
			set_volume(randf() * 1000 - 500)
			set_autoplay(bool(randi()%2))
			set_paused(bool(randi()%2))
			set_expand(bool(randi()%2))
			set_buffering_msec(randi() % 1000 - 500)
			set_stream_position(randf() * 1000 - 500)
			set_bus(str(randf() * 1000 - 500))
			
			qq += str(get_stream_name())
			qq += str(get_video_texture())
			qq += str(is_playing())
			play()
			stop()
	else: #RANDI
		if randi() % 2 == 1:
			set_audio_track(randi() % 1000 - 500)
		if randi() % 2 == 1:
			set_stream(load("res://RES/VideoStreamWebm.tres"))
		if randi() % 2 == 1:
			set_volume_db(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_volume(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_autoplay(bool(randi()%2))
		if randi() % 2 == 1:
			set_paused(bool(randi()%2))
		if randi() % 2 == 1:
			set_expand(bool(randi()%2))
		if randi() % 2 == 1:
			set_buffering_msec(randi() % 1000 - 500)
		if randi() % 2 == 1:
			set_stream_position(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_bus(str(randf() * 1000 - 500))
			
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
