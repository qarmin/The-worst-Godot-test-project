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
		
		var q_SpatialVelocityTracker : SpatialVelocityTracker = SpatialVelocityTracker.new()
		
		q_SpatialVelocityTracker.set_track_physics_step(bool(randi()%2))
		
		qq += str(q_SpatialVelocityTracker.get_tracked_linear_velocity())
		q_SpatialVelocityTracker.reset( Vector3(randf() * 50,randf() * 50,randf() * 50))
		q_SpatialVelocityTracker.update_position( Vector3(randf() * 50,randf() * 50,randf() * 50))
		
		if Autoload.WRONG_BUGS:
			pass
