extends Node2D

var q_CameraTexture : CameraTexture = CameraTexture.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_CameraTexture = CameraTexture.new()

		if randi() % 2 == 1:
			q_CameraTexture.set_camera_feed_id(Autoload.get_int())
		if randi() % 2 == 1:
			q_CameraTexture.set_which_feed(Autoload.get_int())
		if randi() % 2 == 1:
			q_CameraTexture.set_camera_active(Autoload.get_bool())
