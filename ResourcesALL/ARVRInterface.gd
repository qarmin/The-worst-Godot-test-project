extends Node2D

var q_ARVRInterface : ARVRInterface = MobileVRInterface.new()
var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq

	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		if randi() % 2 == 1:
			q_ARVRInterface = MobileVRInterface.new()
		if randi() % 2 == 1:
			q_ARVRInterface.set_is_primary(Autoload.get_bool())
		if randi() % 2 == 1:
			q_ARVRInterface.set_is_initialized(Autoload.get_bool())
		if randi() % 2 == 1:
			q_ARVRInterface.set_anchor_detection_is_enabled(Autoload.get_bool())

		if randi() % 2 == 1:
			qq += str(q_ARVRInterface.get_camera_feed_id())
		if randi() % 2 == 1:
			qq += str(q_ARVRInterface.get_capabilities())
		if randi() % 2 == 1:
			qq += str(q_ARVRInterface.get_name())
		if randi() % 2 == 1:
			qq += str(q_ARVRInterface.get_render_targetsize())
		if randi() % 2 == 1:
			qq += str(q_ARVRInterface.get_tracking_status())

		if randi() % 2 == 1:
			qq += str(q_ARVRInterface.initialize())
		if randi() % 2 == 1:
			qq += str(q_ARVRInterface.is_stereo())
		if randi() % 2 == 1:
			q_ARVRInterface.uninitialize()
