extends Node2D

var q_AudioStreamSample : AudioStreamSample = AudioStreamSample.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AudioStreamSample,true)

func nodeFunction(q_AudioStreamSample : AudioStreamSample, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_AudioStreamSample = AudioStreamSample.new()
	if randi() % 2 == 1:
		AutoResourcesAudioStream.nodeFunction(q_AudioStreamSample)

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

		### q_AudioStreamSample.save_to_wav(Autoload.get_nodepath(q_AudioStreamSample)))
