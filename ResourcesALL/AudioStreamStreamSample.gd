extends Node2D

var q_AudioStreamSample : AudioStreamSample = AudioStreamSample.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_AudioStreamSample = AudioStreamSample.new()

		if randi() % 2 == 1:
			q_AudioStreamSample.set_data(Autoload.get_poolbytearray())
		if randi() % 2 == 1:
			q_AudioStreamSample.set_format(Autoload.get_int())#
		if randi() % 2 == 1:
			q_AudioStreamSample.set_loop_mode(Autoload.get_int())#LoopMode
		if randi() % 2 == 1:
			q_AudioStreamSample.set_loop_begin(Autoload.get_int())
		if randi() % 2 == 1:
			q_AudioStreamSample.set_loop_end(Autoload.get_int())
		if randi() % 2 == 1:
			q_AudioStreamSample.set_mix_rate(Autoload.get_int())
		if randi() % 2 == 1:
			q_AudioStreamSample.set_stereo(Autoload.get_bool())

			### Autoload.qq = str(q_AudioStreamSample.save_to_wav(Autoload.get_nodepath(self)))
