extends Node2D

var q_AudioStreamRandomPitch: AudioStreamRandomPitch = AudioStreamRandomPitch.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AudioStreamRandomPitch, true)


func nodeFunction(q_AudioStreamRandomPitch: AudioStreamRandomPitch, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_AudioStreamRandomPitch = AudioStreamRandomPitch.new()
	if randi() % 2 == 1:
		AutoResourcesAudioStream.nodeFunction(q_AudioStreamRandomPitch)

	### START TEMP

	var temp_AudioStreamGenerator: AudioStreamGenerator = AudioStreamGenerator.new()
	AutoResourcesAudioStreamGenerator.nodeFunction(temp_AudioStreamGenerator)

	### END TEMP

	if randi() % 2 == 1:
		q_AudioStreamRandomPitch.set_audio_stream(temp_AudioStreamGenerator)
	if randi() % 2 == 1:
		q_AudioStreamRandomPitch.set_random_pitch(Autoload.get_float())
