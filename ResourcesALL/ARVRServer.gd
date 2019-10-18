extends Node2D

onready var counter : float = Autoload.get_rand_time()

#
#
#
#func alt_process(delta) -> void:
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
#		q_ARVRServer.center_on_hmd( Autoload.get_int(), Autoload.get_bool() ) #RotationMode
#		Autoload.qq = str(q_ARVRServer.find_interface( Autoload.get_string() ))
#
#		Autoload.qq = str(q_ARVRServer.get_hmd_transform())
#		Autoload.qq = str(q_ARVRServer.get_interface( Autoload.get_int() ))
#		Autoload.qq = str(q_ARVRServer.get_interface_count())
#		Autoload.qq = str(q_ARVRServer.get_interfaces())
#		Autoload.qq = str(q_ARVRServer.get_last_commit_usec())
#		Autoload.qq = str(q_ARVRServer.get_last_frame_usec())
#		Autoload.qq = str(q_ARVRServer.get_last_process_usec())
#		Autoload.qq = str(q_ARVRServer.get_reference_frame())
#		Autoload.qq = str(q_ARVRServer.get_tracker( Autoload.get_int() ))
#		Autoload.qq = str(q_ARVRServer.get_tracker_count())
#
