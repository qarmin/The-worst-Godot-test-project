extends Node2D

var q_CameraFeed: CameraFeed = CameraFeed.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_CameraFeed, true)


func nodeFunction(q_CameraFeed: CameraFeed, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_CameraFeed = CameraFeed.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_CameraFeed)

#	if randi() % 2 == 1: #MISSING
#		q_CameraFeed.set_transform(Autoload.get_transform2d())

#	if randi() % 2 == 1:
#		q_CameraFeed.get_id()
#	if randi() % 2 == 1:
#		q_CameraFeed.get_name()
#	if randi() % 2 == 1:
#		q_CameraFeed.get_position()
