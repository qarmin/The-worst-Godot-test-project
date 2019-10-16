extends Node2D

var q_AudioStreamRandomPitch : AudioStreamRandomPitch = AudioStreamRandomPitch.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_AudioStreamRandomPitch = AudioStreamRandomPitch.new()

		if randi() % 2 == 1:
			q_AudioStreamRandomPitch.set_audio_stream(Autoload.loadA("AudioStreamGenerator.tres"))
		if randi() % 2 == 1:
			q_AudioStreamRandomPitch.set_random_pitch(Autoload.get_float())
