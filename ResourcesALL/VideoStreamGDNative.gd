extends Node2D

var q_VideoStreamGDNative: VideoStreamGDNative = VideoStreamGDNative.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VideoStreamGDNative, true)


func nodeFunction(q_VideoStreamGDNative: VideoStreamGDNative, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_VideoStreamGDNative = VideoStreamGDNative.new()
	if randi() % 2 == 1:
		AutoResourcesVideoStream.nodeFunction(q_VideoStreamGDNative)

	if randi() % 2 == 1:
		q_VideoStreamGDNative.get_file()
	if randi() % 2 == 1:
		q_VideoStreamGDNative.set_file("res://TEMP/" + Autoload.get_string())
