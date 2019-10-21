extends Node2D

var q_AudioStreamOGGVorbis : AudioStreamOGGVorbis = AudioStreamOGGVorbis.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AudioStreamOGGVorbis,true)

func nodeFunction(q_AudioStreamOGGVorbis : AudioStreamOGGVorbis, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_AudioStreamOGGVorbis = AudioStreamOGGVorbis.new()
	if randi() % 2 == 1:
		AutoResourcesAudioStream.nodeFunction(q_AudioStreamOGGVorbis)

	if randi() % 2 == 1:
		q_AudioStreamOGGVorbis.set_data(Autoload.get_poolbytearray())
	if randi() % 2 == 1:
		q_AudioStreamOGGVorbis.set_loop(Autoload.get_bool())
	if randi() % 2 == 1:
		q_AudioStreamOGGVorbis.set_loop_offset(Autoload.get_float())
