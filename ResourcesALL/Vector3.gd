extends Node2D

var q_Vector3 : Vector3 = Autoload.get_vector3()

func _process(delta) -> void:
	
	if randi() % 20:
		if randi() % 2 == 1:
			q_Vector3 = Autoload.get_vector3()

	if randi() % 2 == 1:
		q_Vector3.abs()
	if randi() % 2 == 1:
		q_Vector3.angle_to( Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Vector3.bounce( Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Vector3.ceil()
	if randi() % 2 == 1:
		q_Vector3.cross( Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Vector3.cubic_interpolate( Autoload.get_vector3(), Autoload.get_vector3(), Autoload.get_vector3(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Vector3.direction_to( Autoload.get_vector3())

	if randi() % 2 == 1:
		q_Vector3.distance_squared_to( Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Vector3.distance_to( Autoload.get_vector3())

	if randi() % 2 == 1:
		q_Vector3.dot( Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Vector3.floor()
	if randi() % 2 == 1:
		q_Vector3.inverse()
	if randi() % 2 == 1:
		q_Vector3.is_normalized()

	if randi() % 2 == 1:
		q_Vector3.length()
	if randi() % 2 == 1:
		q_Vector3.length_squared()

	if randi() % 2 == 1:
		q_Vector3.linear_interpolate( Autoload.get_vector3(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Vector3.max_axis()
	if randi() % 2 == 1:
		q_Vector3.min_axis()
	if randi() % 2 == 1:
		q_Vector3.move_toward( Autoload.get_vector3(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Vector3.normalized()
	if randi() % 2 == 1:
		q_Vector3.outer( Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Vector3.project( Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Vector3.reflect( Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Vector3.rotated( Autoload.get_vector3(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Vector3.round()
	if randi() % 2 == 1:
		q_Vector3.slerp( Autoload.get_vector3(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Vector3.slide( Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Vector3.snapped( Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Vector3.to_diagonal_matrix()
