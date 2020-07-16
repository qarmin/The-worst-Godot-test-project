extends Node2D

var q_CameraTexture: CameraTexture = CameraTexture.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_CameraTexture, true)


func nodeFunction(q_CameraTexture: CameraTexture, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_CameraTexture = CameraTexture.new()
#	if randi() % 2 == 1:#MISSING
#		AutoResourcesTexture.nodeFunction(q_CameraTexture)

	if randi() % 2 == 1:
		q_CameraTexture.set_camera_feed_id(Autoload.get_int())
	if randi() % 2 == 1:
		q_CameraTexture.set_which_feed(Autoload.get_int())
	if randi() % 2 == 1:
		q_CameraTexture.set_camera_active(Autoload.get_bool())
