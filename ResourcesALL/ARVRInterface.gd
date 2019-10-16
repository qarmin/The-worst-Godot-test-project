extends Node2D

var q_ARVRInterface : ARVRInterface = MobileVRInterface.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_ARVRInterface = MobileVRInterface.new()
		if randi() % 2 == 1:
			q_ARVRInterface.set_is_primary(Autoload.get_bool())
		if randi() % 2 == 1:
			q_ARVRInterface.set_is_initialized(Autoload.get_bool())
		if randi() % 2 == 1:
			q_ARVRInterface.set_anchor_detection_is_enabled(Autoload.get_bool())

		if randi() % 2 == 1:
			Autoload.qq = str(q_ARVRInterface.get_camera_feed_id())
		if randi() % 2 == 1:
			Autoload.qq = str(q_ARVRInterface.get_capabilities())
		if randi() % 2 == 1:
			Autoload.qq = str(q_ARVRInterface.get_name())
		if randi() % 2 == 1:
			Autoload.qq = str(q_ARVRInterface.get_render_targetsize())
		if randi() % 2 == 1:
			Autoload.qq = str(q_ARVRInterface.get_tracking_status())

		if randi() % 2 == 1:
			Autoload.qq = str(q_ARVRInterface.initialize())
		if randi() % 2 == 1:
			Autoload.qq = str(q_ARVRInterface.is_stereo())
		if randi() % 2 == 1:
			q_ARVRInterface.uninitialize()
