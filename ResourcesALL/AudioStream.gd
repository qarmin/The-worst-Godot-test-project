extends Node2D

var q_AudioStream : AudioStream = AudioStreamGenerator.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AudioStream,true)

func nodeFunction(q_AudioStream : AudioStream, can_reset : bool = false) -> void:
	
#	if can_reset:
#		if randi() % 2 == 1:
#			q_AudioStream = AudioStream.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_AudioStream)

	if randi() % 2 == 1:
		q_AudioStream.get_length()
