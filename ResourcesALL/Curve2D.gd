extends Node2D

var q_Curve2D : Curve2D = Curve2D.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			var q_Curve2D = Autoload.loadA("Curve2D.tres")
		# NOT STABLE 120FPS

		if randi() % 2 == 1:
			for _i in range(2):
				q_Curve2D.add_point( Autoload.get_vector2(), Autoload.get_vector2(), Autoload.get_vector2(), -1 )
		if randi() % 2 == 1:
			q_Curve2D.clear_points()

		if Autoload.SLOW_FUNCTIONS:
			if randi() % 2 == 1:
				Autoload.qq = str(q_Curve2D.get_baked_length())
			if randi() % 2 == 1:
				Autoload.qq = str(q_Curve2D.get_baked_points())
			if randi() % 2 == 1:
				Autoload.qq = str(q_Curve2D.get_closest_offset( Autoload.get_vector2() ))
			if randi() % 2 == 1:
				Autoload.qq = str(q_Curve2D.get_closest_point( Autoload.get_vector2() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Curve2D.get_point_count())
		if randi() % 2 == 1:
			Autoload.qq = str(q_Curve2D.get_point_in(Autoload.get_int() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Curve2D.get_point_out(Autoload.get_int() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Curve2D.get_point_position(Autoload.get_int() ))

		if randi() % 2 == 1:
			Autoload.qq = str(q_Curve2D.interpolate(Autoload.get_int(), Autoload.get_float() ))
		if Autoload.SLOW_FUNCTIONS:
			if randi() % 2 == 1:
				Autoload.qq = str(q_Curve2D.interpolate_baked( Autoload.get_float(), Autoload.get_bool()))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Curve2D.interpolatef( Autoload.get_float() ))

		if randi() % 2 == 1:
			q_Curve2D.remove_point(Autoload.get_int() )

		if randi() % 2 == 1:
			q_Curve2D.set_point_in(Autoload.get_int(), Autoload.get_vector2() )
		if randi() % 2 == 1:
			q_Curve2D.set_point_out(Autoload.get_int(), Autoload.get_vector2() )
		if randi() % 2 == 1:
			q_Curve2D.set_point_position(Autoload.get_int(), Autoload.get_vector2() )

		if randi() % 2 == 1:
			if Autoload.SLOW_FUNCTIONS:
				Autoload.qq = str(q_Curve2D.tessellate( Autoload.get_int(), Autoload.get_float() ))
