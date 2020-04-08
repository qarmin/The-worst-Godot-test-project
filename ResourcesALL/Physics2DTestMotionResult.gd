extends Node2D

var q_PhysicsTestMotionResult2D : PhysicsTestMotionResult2D = PhysicsTestMotionResult2D.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_PhysicsTestMotionResult2D,true)

func nodeFunction(q_PhysicsTestMotionResult2D : PhysicsTestMotionResult2D, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_PhysicsTestMotionResult2D = PhysicsTestMotionResult2D.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_PhysicsTestMotionResult2D)

	if randi() % 2 == 1:
		q_PhysicsTestMotionResult2D.get_motion()
	if randi() % 2 == 1:
		q_PhysicsTestMotionResult2D.get_motion_remainder()
	if randi() % 2 == 1:
		q_PhysicsTestMotionResult2D.get_collision_point()
	if randi() % 2 == 1:
		q_PhysicsTestMotionResult2D.get_collision_normal()
	if randi() % 2 == 1:
		q_PhysicsTestMotionResult2D.get_collider_velocity()
	if randi() % 2 == 1:
		q_PhysicsTestMotionResult2D.get_collider_id()
	if randi() % 2 == 1:
		q_PhysicsTestMotionResult2D.get_collider_rid()
	if randi() % 2 == 1:
		q_PhysicsTestMotionResult2D.get_collider()
	if randi() % 2 == 1:
		q_PhysicsTestMotionResult2D.get_collider_shape()
