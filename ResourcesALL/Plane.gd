extends Node2D

var q_Plane : Plane = Autoload.get_plane()


func _process(delta) -> void:
	if randi() % 20:
		if randi() % 2 == 1:
			if randi() % 2 == 1:
				q_Plane = Plane(Autoload.get_float(),Autoload.get_float(),Autoload.get_float(),Autoload.get_float())
			if randi() % 2 == 1:
				q_Plane = Plane(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3())
			if randi() % 2 == 1:
				q_Plane = Plane(Autoload.get_vector3(),Autoload.get_float())

	if randi() % 2 == 1:
		q_Plane.center()
	if randi() % 2 == 1:
		q_Plane.distance_to( Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Plane.get_any_point()
	if randi() % 2 == 1:
		q_Plane.has_point( Autoload.get_vector3(), Autoload.get_float())

	if randi() % 2 == 1:
		q_Plane.intersect_3( Autoload.get_plane(), Autoload.get_plane())
	if randi() % 2 == 1:
		q_Plane.intersects_ray( Autoload.get_vector3(), Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Plane.intersects_segment( Autoload.get_vector3(), Autoload.get_vector3())

	if randi() % 2 == 1:
		q_Plane.is_point_over( Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Plane.normalized()
	if randi() % 2 == 1:
		q_Plane.project( Autoload.get_vector3())
