extends Node2D

var q_ARVRPositionalTracker : ARVRPositionalTracker = ARVRPositionalTracker.new()
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
			q_ARVRPositionalTracker = ARVRPositionalTracker.new()
		
		if randi() % 2 == 1:
			q_ARVRPositionalTracker.set_rumble(randf() * Autoload.RANGE - Autoload.RANGE / 2)

		if randi() % 2 == 1:
			qq += str(q_ARVRPositionalTracker.get_hand())
		if randi() % 2 == 1:
			qq += str(q_ARVRPositionalTracker.get_joy_id())
		if randi() % 2 == 1:
			qq += str(q_ARVRPositionalTracker.get_mesh())
		if randi() % 2 == 1:
			qq += str(q_ARVRPositionalTracker.get_name())
		if randi() % 2 == 1:
			qq += str(q_ARVRPositionalTracker.get_orientation())
		if randi() % 2 == 1:
			qq += str(q_ARVRPositionalTracker.get_position())
		if randi() % 2 == 1:
			qq += str(q_ARVRPositionalTracker.get_tracks_orientation())
		if randi() % 2 == 1:
			qq += str(q_ARVRPositionalTracker.get_tracks_position())
		if randi() % 2 == 1:
			qq += str(q_ARVRPositionalTracker.get_transform( bool(randi()%2)))
		if randi() % 2 == 1:
			qq += str(q_ARVRPositionalTracker.get_type())
		
		
		q_ARVRPositionalTracker.free()
