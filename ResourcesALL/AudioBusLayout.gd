extends Node2D

var q_AudioBusLayout: AudioBusLayout = AudioBusLayout.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AudioBusLayout, true)


func nodeFunction(q_AudioBusLayout: AudioBusLayout, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_AudioBusLayout = AudioBusLayout.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_AudioBusLayout)
