extends Node2D

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
		
#		var q_ARVRPositionalTracker : ARVRPositionalTracker = ARVRPositionalTracker.new()
#
#		q_ARVRPositionalTracker.set_rumble(randf() * 50)
#
#		qq += str(q_ARVRPositionalTracker.get_hand())
#		qq += str(q_ARVRPositionalTracker.get_joy_id())
#		qq += str(q_ARVRPositionalTracker.get_mesh())
#		qq += str(q_ARVRPositionalTracker.get_name())
#		qq += str(q_ARVRPositionalTracker.get_orientation())
#		qq += str(q_ARVRPositionalTracker.get_position())
#		qq += str(q_ARVRPositionalTracker.get_tracks_orientation())
#		qq += str(q_ARVRPositionalTracker.get_tracks_position())
#		qq += str(q_ARVRPositionalTracker.get_transform( bool(randi()%2)))
#		qq += str(q_ARVRPositionalTracker.get_type())
#
#		if Autoload.WRONG_BUGS:
#			q_ARVRPositionalTracker.set_rumble(randf() * 1000 - 500)
#
#			qq += str(q_ARVRPositionalTracker.get_hand())
#			qq += str(q_ARVRPositionalTracker.get_joy_id())
#			qq += str(q_ARVRPositionalTracker.get_mesh())
#			qq += str(q_ARVRPositionalTracker.get_name())
#			qq += str(q_ARVRPositionalTracker.get_orientation())
#			qq += str(q_ARVRPositionalTracker.get_position())
#			qq += str(q_ARVRPositionalTracker.get_tracks_orientation())
#			qq += str(q_ARVRPositionalTracker.get_tracks_position())
#			qq += str(q_ARVRPositionalTracker.get_transform( bool(randi()%2)))
#			qq += str(q_ARVRPositionalTracker.get_type())
