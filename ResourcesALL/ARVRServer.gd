extends Node2D

onready var counter: float = Autoload.get_rand_time()


#
#
#
func alt_process(delta) -> void:
	pass
#	counter -= delta
#
#
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#

#		var q_ARVRServer : ARVRServer = ARVRServer.new()
#
#		q_ARVRServer.set_world_scale(Autoload.get_float())
#		q_ARVRServer.set_primary_interface(ARVRInterface.new())
#
#		q_ARVRServer.center_on_hmd( Autoload.get_int(), Autoload.get_bool()) #RotationMode
#		q_ARVRServer.find_interface( Autoload.get_string()))
#
#		q_ARVRServer.get_hmd_transform())
#		q_ARVRServer.get_interface( Autoload.get_int()))
#		q_ARVRServer.get_interface_count())
#		q_ARVRServer.get_interfaces())
#		q_ARVRServer.get_last_commit_usec())
#		q_ARVRServer.get_last_frame_usec())
#		q_ARVRServer.get_last_process_usec())
#		q_ARVRServer.get_reference_frame())
#		q_ARVRServer.get_tracker( Autoload.get_int()))
#		q_ARVRServer.get_tracker_count())
#
