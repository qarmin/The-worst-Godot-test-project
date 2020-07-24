extends Node2D

var q_XRInterface: XRInterface = MobileVRInterface.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_XRInterface, true)


func nodeFunction(q_XRInterface: XRInterface, can_reset: bool = false) -> void:
#	if can_reset:
#		if randi() % 2 == 1:
#			q_XRInterface = MobileVRInterface.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_XRInterface)

	if randi() % 2 == 1:
		q_XRInterface.set_is_primary(Autoload.get_bool())
	if randi() % 2 == 1:
		q_XRInterface.set_is_initialized(Autoload.get_bool())
	if randi() % 2 == 1:
		q_XRInterface.set_anchor_detection_is_enabled(Autoload.get_bool())

	if randi() % 2 == 1:
		q_XRInterface.get_camera_feed_id()
	if randi() % 2 == 1:
		q_XRInterface.get_capabilities()
	if randi() % 2 == 1:
		q_XRInterface.get_name()
	if randi() % 2 == 1:
		q_XRInterface.get_render_targetsize()
	if randi() % 2 == 1:
		q_XRInterface.get_tracking_status()

	if randi() % 2 == 1:
		q_XRInterface.initialize()
	if randi() % 2 == 1:
		q_XRInterface.is_stereo()
	if randi() % 2 == 1:
		q_XRInterface.uninitialize()
