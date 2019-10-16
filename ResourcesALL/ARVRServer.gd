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

#		var q_ARVRServer : ARVRServer = ARVRServer.new()
#
#		q_ARVRServer.set_world_scale(Autoload.get_float())
#		q_ARVRServer.set_primary_interface(ARVRInterface.new())
#
#		q_ARVRServer.center_on_hmd( Autoload.get_int(), Autoload.get_bool() ) #RotationMode
#		qq += str(q_ARVRServer.find_interface( Autoload.get_string() ))
#
#		qq += str(q_ARVRServer.get_hmd_transform())
#		qq += str(q_ARVRServer.get_interface( Autoload.get_int() ))
#		qq += str(q_ARVRServer.get_interface_count())
#		qq += str(q_ARVRServer.get_interfaces())
#		qq += str(q_ARVRServer.get_last_commit_usec())
#		qq += str(q_ARVRServer.get_last_frame_usec())
#		qq += str(q_ARVRServer.get_last_process_usec())
#		qq += str(q_ARVRServer.get_reference_frame())
#		qq += str(q_ARVRServer.get_tracker( Autoload.get_int() ))
#		qq += str(q_ARVRServer.get_tracker_count())
#
