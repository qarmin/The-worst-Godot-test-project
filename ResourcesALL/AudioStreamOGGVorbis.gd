extends Node2D

var q_AudioStreamOGGVorbis : AudioStreamOGGVorbis = AudioStreamOGGVorbis.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_AudioStreamOGGVorbis = AudioStreamOGGVorbis.new()

		if randi() % 2 == 1:
			q_AudioStreamOGGVorbis.set_data(Autoload.get_poolbytearray())
		if randi() % 2 == 1:
			q_AudioStreamOGGVorbis.set_loop(Autoload.get_bool())
		if randi() % 2 == 1:
			q_AudioStreamOGGVorbis.set_loop_offset(Autoload.get_float())
