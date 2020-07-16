extends VideoPlayer

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_VideoPlayer: VideoPlayer, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_VideoPlayer)
		AutoObjects.A_Node(q_VideoPlayer)
		AutoObjects.A_CanvasItem(q_VideoPlayer)
		AutoObjects.A_Control(q_VideoPlayer)

	### START TEMP
	var temp_VideoStreamWebm: VideoStreamWebm = VideoStreamWebm.new()
#?#	AutoResourcesVideoStreamWebm.nodeFunction(temp_VideoStreamWebm)

	### END TEMP

	if randi() % 2 == 1:
		q_VideoPlayer.set_audio_track(Autoload.get_int())
	if randi() % 2 == 1:
		q_VideoPlayer.set_stream(temp_VideoStreamWebm)
	if randi() % 2 == 1:
		q_VideoPlayer.set_volume_db(Autoload.get_float())
	if randi() % 2 == 1:
		q_VideoPlayer.set_volume(Autoload.get_float())
	if randi() % 2 == 1:
		q_VideoPlayer.set_autoplay(Autoload.get_bool())
	if randi() % 2 == 1:
		q_VideoPlayer.set_paused(Autoload.get_bool())
	if randi() % 2 == 1:
		q_VideoPlayer.set_expand(Autoload.get_bool())
	if randi() % 2 == 1:
		q_VideoPlayer.set_buffering_msec(Autoload.get_int())
	if randi() % 2 == 1:
		q_VideoPlayer.set_stream_position(Autoload.get_float())
	if randi() % 2 == 1:
		q_VideoPlayer.set_bus(Autoload.get_string())

	if randi() % 2 == 1:
		q_VideoPlayer.get_stream_name()
	if randi() % 2 == 1:
		q_VideoPlayer.get_video_texture()
	if randi() % 2 == 1:
		q_VideoPlayer.is_playing()
	if randi() % 2 == 1:
		q_VideoPlayer.play()
	if randi() % 2 == 1:
		q_VideoPlayer.stop()
