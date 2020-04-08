extends Node2D

var q_VelocityTracker3D : VelocityTracker3D = VelocityTracker3D.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VelocityTracker3D,true)

func nodeFunction(q_VelocityTracker3D : VelocityTracker3D, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_VelocityTracker3D = VelocityTracker3D.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_VelocityTracker3D)

	if randi() % 2 == 1:
		q_VelocityTracker3D.set_track_physics_step(Autoload.get_bool())

	if randi() % 2 == 1:
		q_VelocityTracker3D.get_tracked_linear_velocity()
	if randi() % 2 == 1:
		q_VelocityTracker3D.reset( Autoload.get_vector3())
	if randi() % 2 == 1:
		q_VelocityTracker3D.update_position( Autoload.get_vector3())
