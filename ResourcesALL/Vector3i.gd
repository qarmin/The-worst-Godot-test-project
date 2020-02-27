extends Node2D

var q_Vector3i : Vector3i = Autoload.get_vector3i()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Vector3i,true)

func nodeFunction(q_Vector3i : Vector3i, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_Vector3i = Autoload.get_vector3i()

#	if randi() % 2 == 1:
#		q_Vector3i.abs()
#	if randi() % 2 == 1:
#		q_Vector3i.angle_to( Autoload.get_vector3i())
#	if randi() % 2 == 1:
#		q_Vector3i.bounce( Autoload.get_vector3i())
#	if randi() % 2 == 1:
#		q_Vector3i.ceil()
#	if randi() % 2 == 1:
#		q_Vector3i.cross( Autoload.get_vector3i())
#	if randi() % 2 == 1:
#		q_Vector3i.cubic_interpolate( Autoload.get_vector3i(), Autoload.get_vector3i(), Autoload.get_vector3i(), Autoload.get_float())
#	if randi() % 2 == 1:
#		q_Vector3i.direction_to( Autoload.get_vector3i())
#
#	if randi() % 2 == 1:
#		q_Vector3i.distance_squared_to( Autoload.get_vector3i())
#	if randi() % 2 == 1:
#		q_Vector3i.distance_to( Autoload.get_vector3i())
#
#	if randi() % 2 == 1:
#		q_Vector3i.dot( Autoload.get_vector3i())
#	if randi() % 2 == 1:
#		q_Vector3i.floor()
#	if randi() % 2 == 1:
#		q_Vector3i.inverse()
#	if randi() % 2 == 1:
#		q_Vector3i.is_normalized()
#
#	if randi() % 2 == 1:
#		q_Vector3i.length()
#	if randi() % 2 == 1:
#		q_Vector3i.length_squared()
#
#	if randi() % 2 == 1:
#		q_Vector3i.linear_interpolate( Autoload.get_vector3i(), Autoload.get_float())
#	if randi() % 2 == 1:
#		q_Vector3i.max_axis()
#	if randi() % 2 == 1:
#		q_Vector3i.min_axis()
#	if randi() % 2 == 1:
#		q_Vector3i.move_toward( Autoload.get_vector3i(), Autoload.get_float())
#	if randi() % 2 == 1:
#		q_Vector3i.normalized()
#	if randi() % 2 == 1:
#		q_Vector3i.outer( Autoload.get_vector3i())
#	if randi() % 2 == 1:
#		q_Vector3i.project( Autoload.get_vector3i())
#	if randi() % 2 == 1:
#		q_Vector3i.reflect( Autoload.get_vector3i())
#	if randi() % 2 == 1:
#		q_Vector3i.rotated( Autoload.get_vector3i(), Autoload.get_float())
#	if randi() % 2 == 1:
#		q_Vector3i.round()
#	if randi() % 2 == 1:
#		q_Vector3i.slerp( Autoload.get_vector3i(), Autoload.get_float())
#	if randi() % 2 == 1:
#		q_Vector3i.slide( Autoload.get_vector3i())
#	if randi() % 2 == 1:
#		q_Vector3i.snapped( Autoload.get_vector3i())
#	if randi() % 2 == 1:
#		q_Vector3i.to_diagonal_matrix()
