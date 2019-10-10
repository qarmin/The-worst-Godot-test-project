extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

#func _ready():
#	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#func _process(delta) -> void:
#	counter -= delta
#	var qq : String = ""
#	qq = qq
#
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#		var q_ARVRInterface : ARVRInterface = ARVRInterface.new()
#			q_ARVRInterface.set_is_primary(bool(randi()%2))
#			q_ARVRInterface.set_is_initialized(bool(randi()%2))
#			q_ARVRInterface.set_anchor_detection_is_enabled(bool(randi()%2))
#
#			qq += str(q_ARVRInterface.get_camera_feed_id())
#			qq += str(q_ARVRInterface.get_capabilities())
#			qq += str(q_ARVRInterface.get_name())
#			qq += str(q_ARVRInterface.get_render_targetsize())
#			qq += str(q_ARVRInterface.get_tracking_status())
#
#			qq += str(q_ARVRInterface.initialize())
#			qq += str(q_ARVRInterface.is_stereo())
#			q_ARVRInterface.uninitialize()
