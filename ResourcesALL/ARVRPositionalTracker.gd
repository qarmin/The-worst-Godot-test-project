extends Node2D
# TODO CHECK IF BUG
#var q_ARVRPositionalTracker : ARVRPositionalTracker = ARVRPositionalTracker.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

#		nodeFunction(q_ARVRPositionalTracker,true)

func nodeFunction(q_ARVRPositionalTracker : ARVRPositionalTracker, can_reset : bool = false) -> void:
	
#	if can_reset:
#		if randi() % 2 == 1:
#			q_ARVRPositionalTracker.free()
#			q_ARVRPositionalTracker = ARVRPositionalTracker.new()
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_ARVRPositionalTracker)

	if randi() % 2 == 1:
		q_ARVRPositionalTracker.set_rumble(Autoload.get_float())

	if randi() % 2 == 1:
		q_ARVRPositionalTracker.get_hand()
	if randi() % 2 == 1:
		q_ARVRPositionalTracker.get_joy_id()
	if randi() % 2 == 1:
		q_ARVRPositionalTracker.get_mesh()
	if randi() % 2 == 1:
		q_ARVRPositionalTracker.get_name()
	if randi() % 2 == 1:
		q_ARVRPositionalTracker.get_orientation()
	if randi() % 2 == 1:
		q_ARVRPositionalTracker.get_position()
	if randi() % 2 == 1:
		q_ARVRPositionalTracker.get_tracks_orientation()
	if randi() % 2 == 1:
		q_ARVRPositionalTracker.get_tracks_position()
	if randi() % 2 == 1:
		q_ARVRPositionalTracker.get_transform( Autoload.get_bool())
	if randi() % 2 == 1:
		q_ARVRPositionalTracker.get_type()

#func _exit_tree():
#	q_ARVRPositionalTracker.free()
