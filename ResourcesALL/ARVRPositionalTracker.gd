extends Node2D
# TODO CHECK IF BUG
#var q_XRPositionalTracker : XRPositionalTracker = XRPositionalTracker.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()


#		nodeFunction(q_XRPositionalTracker,true)


func nodeFunction(q_XRPositionalTracker: XRPositionalTracker, can_reset: bool = false) -> void:
#	if can_reset:
#		if randi() % 2 == 1:
#			q_XRPositionalTracker.free()
#			q_XRPositionalTracker = XRPositionalTracker.new()
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_XRPositionalTracker)

	if randi() % 2 == 1:
		q_XRPositionalTracker.set_rumble(Autoload.get_float())

	if randi() % 2 == 1:
		q_XRPositionalTracker.get_hand()
	if randi() % 2 == 1:
		q_XRPositionalTracker.get_joy_id()
	if randi() % 2 == 1:
		q_XRPositionalTracker.get_mesh()
	if randi() % 2 == 1:
		q_XRPositionalTracker.get_name()
	if randi() % 2 == 1:
		q_XRPositionalTracker.get_orientation()
	if randi() % 2 == 1:
		q_XRPositionalTracker.get_position()
	if randi() % 2 == 1:
		q_XRPositionalTracker.get_tracks_orientation()
	if randi() % 2 == 1:
		q_XRPositionalTracker.get_tracks_position()
	if randi() % 2 == 1:
		q_XRPositionalTracker.get_transform(Autoload.get_bool())
	if randi() % 2 == 1:
		q_XRPositionalTracker.get_type()

#func _exit_tree():
#	q_XRPositionalTracker.free()
