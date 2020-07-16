extends Node2D

var q_KinematicCollision3D: KinematicCollision3D = KinematicCollision3D.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_KinematicCollision3D, true)


func nodeFunction(q_KinematicCollision3D: KinematicCollision3D, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_KinematicCollision3D = KinematicCollision3D.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_KinematicCollision3D)

	if randi() % 2 == 1:
		q_KinematicCollision3D.get_position()
	if randi() % 2 == 1:
		q_KinematicCollision3D.get_normal()
	if randi() % 2 == 1:
		q_KinematicCollision3D.get_travel()
	if randi() % 2 == 1:
		q_KinematicCollision3D.get_remainder()
	if randi() % 2 == 1:
		q_KinematicCollision3D.get_local_shape()
	if randi() % 2 == 1:
		q_KinematicCollision3D.get_collider()
	if randi() % 2 == 1:
		q_KinematicCollision3D.get_collider_id()
	if randi() % 2 == 1:
		q_KinematicCollision3D.get_collider_shape()
	if randi() % 2 == 1:
		q_KinematicCollision3D.get_collider_shape_index()
	if randi() % 2 == 1:
		q_KinematicCollision3D.get_collider_velocity()
	if randi() % 2 == 1:
		q_KinematicCollision3D.get_collider_metadata()
