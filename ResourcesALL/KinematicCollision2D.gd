extends Node2D

var q_KinematicCollision2D : KinematicCollision2D = KinematicCollision2D.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_KinematicCollision2D = KinematicCollision2D.new()

		if randi() % 2 == 1:
			Autoload.qq = str(q_KinematicCollision2D.get_position())
		if randi() % 2 == 1:
			Autoload.qq = str(q_KinematicCollision2D.get_normal())
		if randi() % 2 == 1:
			Autoload.qq = str(q_KinematicCollision2D.get_travel())
		if randi() % 2 == 1:
			Autoload.qq = str(q_KinematicCollision2D.get_remainder())
		if randi() % 2 == 1:
			Autoload.qq = str(q_KinematicCollision2D.get_local_shape())
		if randi() % 2 == 1:
			Autoload.qq = str(q_KinematicCollision2D.get_collider())
		if randi() % 2 == 1:
			Autoload.qq = str(q_KinematicCollision2D.get_collider_id() )
		if randi() % 2 == 1:
			Autoload.qq = str(q_KinematicCollision2D.get_collider_shape())
		if randi() % 2 == 1:
			Autoload.qq = str(q_KinematicCollision2D.get_collider_shape_index())
		if randi() % 2 == 1:
			Autoload.qq = str(q_KinematicCollision2D.get_collider_velocity())
		if randi() % 2 == 1:
			Autoload.qq = str(q_KinematicCollision2D.get_collider_metadata())
