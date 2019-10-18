extends Node2D

#var q_ARVRPositionalTracker : ARVRPositionalTracker = ARVRPositionalTracker.new()
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
#	LEAK	if randi() % 2 == 1:
#			q_ARVRPositionalTracker.free()
#			q_ARVRPositionalTracker = ARVRPositionalTracker.new()
#
#		if randi() % 2 == 1:
#			q_ARVRPositionalTracker.set_rumble(Autoload.get_float())
#
#		if randi() % 2 == 1:
#			Autoload.qq = str(q_ARVRPositionalTracker.get_hand())
#		if randi() % 2 == 1:
#			Autoload.qq = str(q_ARVRPositionalTracker.get_joy_id())
#		if randi() % 2 == 1:
#			Autoload.qq = str(q_ARVRPositionalTracker.get_mesh())
#		if randi() % 2 == 1:
#			Autoload.qq = str(q_ARVRPositionalTracker.get_name())
#		if randi() % 2 == 1:
#			Autoload.qq = str(q_ARVRPositionalTracker.get_orientation())
#		if randi() % 2 == 1:
#			Autoload.qq = str(q_ARVRPositionalTracker.get_position())
#		if randi() % 2 == 1:
#			Autoload.qq = str(q_ARVRPositionalTracker.get_tracks_orientation())
#		if randi() % 2 == 1:
#			Autoload.qq = str(q_ARVRPositionalTracker.get_tracks_position())
#		if randi() % 2 == 1:
#			Autoload.qq = str(q_ARVRPositionalTracker.get_transform( Autoload.get_bool()))
#		if randi() % 2 == 1:
#			Autoload.qq = str(q_ARVRPositionalTracker.get_type())
#
#func delete_node():
#	q_ARVRPositionalTracker.free()
