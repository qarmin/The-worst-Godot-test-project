extends Node2D
#
var q_VideoStream: VideoStream = VideoStreamGDNative.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VideoStream, true)


func nodeFunction(q_VideoStream: VideoStream, can_reset: bool = false) -> void:
#	if can_reset:
#		if randi() % 2 == 1:
#			q_VideoStream = VideoStream.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_VideoStream)
