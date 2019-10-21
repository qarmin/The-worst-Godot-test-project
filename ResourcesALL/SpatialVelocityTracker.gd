extends Node2D

var q_SpatialVelocityTracker : SpatialVelocityTracker = SpatialVelocityTracker.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_SpatialVelocityTracker,true)

func nodeFunction(q_SpatialVelocityTracker : SpatialVelocityTracker, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_SpatialVelocityTracker = SpatialVelocityTracker.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_SpatialVelocityTracker)

	if randi() % 2 == 1:
		q_SpatialVelocityTracker.set_track_physics_step(Autoload.get_bool())

	if randi() % 2 == 1:
		q_SpatialVelocityTracker.get_tracked_linear_velocity()
	if randi() % 2 == 1:
		q_SpatialVelocityTracker.reset( Autoload.get_vector3())
	if randi() % 2 == 1:
		q_SpatialVelocityTracker.update_position( Autoload.get_vector3())
