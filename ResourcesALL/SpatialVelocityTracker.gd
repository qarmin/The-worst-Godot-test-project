extends Node2D

var q_SpatialVelocityTracker : SpatialVelocityTracker = SpatialVelocityTracker.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_SpatialVelocityTracker = SpatialVelocityTracker.new()

		if randi() % 2 == 1:
			q_SpatialVelocityTracker.set_track_physics_step(Autoload.get_bool())

		if randi() % 2 == 1:
			q_SpatialVelocityTracker.get_tracked_linear_velocity())
		if randi() % 2 == 1:
			q_SpatialVelocityTracker.reset( Autoload.get_vector3())
		if randi() % 2 == 1:
			q_SpatialVelocityTracker.update_position( Autoload.get_vector3())
