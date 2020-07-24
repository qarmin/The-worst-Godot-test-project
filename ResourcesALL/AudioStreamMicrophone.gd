extends Node2D

var q_AudioStreamGenerator: AudioStreamGenerator = AudioStreamGenerator.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AudioStreamGenerator, true)


func nodeFunction(q_AudioStreamGenerator: AudioStreamGenerator, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_AudioStreamGenerator = AudioStreamGenerator.new()
	if randi() % 2 == 1:
		AutoResourcesAudioStream.nodeFunction(q_AudioStreamGenerator)
