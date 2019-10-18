extends Node2D

var q_Curve : Curve = Curve.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_Curve = Curve.new()

		if randi() % 2 == 1:
			q_Curve.set_min_value(Autoload.get_float())
		if randi() % 2 == 1:
			q_Curve.set_max_value(Autoload.get_float())
		if randi() % 2 == 1:
			q_Curve.set_bake_resolution(Autoload.get_int()) 
		if randi() % 2 == 1:
			for _i in range(3):
				Autoload.qq = str(q_Curve.add_point( Autoload.get_vector2(), Autoload.get_float(),Autoload.get_float(), Autoload.get_int(), Autoload.get_int() )) #TangentMode
		if randi() % 2 == 1:
			if Autoload.SLOW_FUNCTIONS:
				q_Curve.bake()

		if randi() % 2 == 1:
			q_Curve.clean_dupes()
		if randi() % 2 == 1:
			q_Curve.clear_points()

		if randi() % 2 == 1:
			Autoload.qq = str(q_Curve.get_point_count())
		if randi() % 2 == 1:
			Autoload.qq = str(q_Curve.get_point_left_mode(Autoload.get_int() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Curve.get_point_left_tangent(Autoload.get_int() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Curve.get_point_position(Autoload.get_int() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Curve.get_point_right_mode(Autoload.get_int() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Curve.get_point_right_tangent(Autoload.get_int() ))

		if randi() % 2 == 1:
			Autoload.qq = str(q_Curve.interpolate( Autoload.get_float() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Curve.interpolate_baked( Autoload.get_float() ))

		if randi() % 2 == 1:
			q_Curve.remove_point(Autoload.get_int())

		if randi() % 2 == 1:
			q_Curve.set_point_left_mode(Autoload.get_int(), Autoload.get_int() )#TangentMode
		if randi() % 2 == 1:
			q_Curve.set_point_left_tangent(Autoload.get_int(), Autoload.get_float())
		if randi() % 2 == 1:
			Autoload.qq = str(q_Curve.set_point_offset(Autoload.get_int(), Autoload.get_float() ))
		if randi() % 2 == 1:
			q_Curve.set_point_right_mode(Autoload.get_int(), Autoload.get_int() )#TangentMode
		if randi() % 2 == 1:
			q_Curve.set_point_right_tangent(Autoload.get_int(), Autoload.get_float() )
		if randi() % 2 == 1:
			q_Curve.set_point_value(Autoload.get_int(), Autoload.get_float() )
