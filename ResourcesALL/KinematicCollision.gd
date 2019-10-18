extends Node2D

var q_KinematicCollision : KinematicCollision = KinematicCollision.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_KinematicCollision = KinematicCollision.new()

		if randi() % 2 == 1:
			Autoload.qq = str(q_KinematicCollision.get_position())
		if randi() % 2 == 1:
			Autoload.qq = str(q_KinematicCollision.get_normal())
		if randi() % 2 == 1:
			Autoload.qq = str(q_KinematicCollision.get_travel())
		if randi() % 2 == 1:
			Autoload.qq = str(q_KinematicCollision.get_remainder())
		if randi() % 2 == 1:
			Autoload.qq = str(q_KinematicCollision.get_local_shape())
		if randi() % 2 == 1:
			Autoload.qq = str(q_KinematicCollision.get_collider())
		if randi() % 2 == 1:
			Autoload.qq = str(q_KinematicCollision.get_collider_id() )
		if randi() % 2 == 1:
			Autoload.qq = str(q_KinematicCollision.get_collider_shape())
		if randi() % 2 == 1:
			Autoload.qq = str(q_KinematicCollision.get_collider_shape_index())
		if randi() % 2 == 1:
			Autoload.qq = str(q_KinematicCollision.get_collider_velocity())
		if randi() % 2 == 1:
			Autoload.qq = str(q_KinematicCollision.get_collider_metadata())
