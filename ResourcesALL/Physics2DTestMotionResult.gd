extends Node2D

var q_Physics2DTestMotionResult : Physics2DTestMotionResult = Physics2DTestMotionResult.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Physics2DTestMotionResult,true)

func nodeFunction(q_Physics2DTestMotionResult : Physics2DTestMotionResult, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_Physics2DTestMotionResult = Physics2DTestMotionResult.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_Physics2DTestMotionResult)

		if randi() % 2 == 1:
			q_Physics2DTestMotionResult.get_motion()
		if randi() % 2 == 1:
			q_Physics2DTestMotionResult.get_motion_remainder()
		if randi() % 2 == 1:
			q_Physics2DTestMotionResult.get_collision_point()
		if randi() % 2 == 1:
			q_Physics2DTestMotionResult.get_collision_normal()
		if randi() % 2 == 1:
			q_Physics2DTestMotionResult.get_collider_velocity()
		if randi() % 2 == 1:
			q_Physics2DTestMotionResult.get_collider_id()
		if randi() % 2 == 1:
			q_Physics2DTestMotionResult.get_collider_rid()
		if randi() % 2 == 1:
			q_Physics2DTestMotionResult.get_collider()
		if randi() % 2 == 1:
			q_Physics2DTestMotionResult.get_collider_shape()
