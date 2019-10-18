extends Node2D

var q_Curve3D : Curve3D = Curve3D.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_Curve3D = Curve3D.new()

		if randi() % 2 == 1:
			if Autoload.SLOW_FUNCTIONS:
				q_Curve3D.add_point( Autoload.get_vector3(), Autoload.get_vector3(), Autoload.get_vector3(), Autoload.get_int() )
		if randi() % 2 == 1:
			q_Curve3D.clear_points()

		if Autoload.SLOW_FUNCTIONS:
			if randi() % 2 == 1:
				Autoload.qq = str(q_Curve3D.get_baked_length())
			if randi() % 2 == 1:
				Autoload.qq = str(q_Curve3D.get_baked_points())
			if randi() % 2 == 1:
				Autoload.qq = str(q_Curve3D.get_closest_offset( Autoload.get_vector3() ))
			if randi() % 2 == 1:
				Autoload.qq = str(q_Curve3D.get_closest_point( Autoload.get_vector3() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Curve3D.get_point_count())
		if randi() % 2 == 1:
			Autoload.qq = str(q_Curve3D.get_point_in( Autoload.get_int() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Curve3D.get_point_out( Autoload.get_int() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Curve3D.get_point_position( Autoload.get_int() ))

		if randi() % 2 == 1:
			Autoload.qq = str(q_Curve3D.interpolate( Autoload.get_int(), Autoload.get_float() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Curve3D.interpolate_baked( Autoload.get_float(), Autoload.get_bool()))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Curve3D.interpolatef( Autoload.get_float() ))

		if randi() % 2 == 1:
			q_Curve3D.remove_point( Autoload.get_int() )

		if randi() % 2 == 1:
			q_Curve3D.set_point_in( Autoload.get_int(), Autoload.get_vector3() )
		if randi() % 2 == 1:
			q_Curve3D.set_point_out( Autoload.get_int(), Autoload.get_vector3() )
		if randi() % 2 == 1:
			q_Curve3D.set_point_position( Autoload.get_int(), Autoload.get_vector3() )

		if Autoload.SLOW_FUNCTIONS:
			if randi() % 2 == 1:
				Autoload.qq = str(q_Curve3D.tessellate( Autoload.get_int(), Autoload.get_float() ))
