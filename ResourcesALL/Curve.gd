extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		var q_Curve : Curve = Curve.new()
		
		q_Curve.set_min_value(randf() * 50)
		q_Curve.set_max_value(randf() * 50)
		q_Curve.set_bake_resolution(randi()%50 + 1)
		for _i in range(3):
			qq += str(q_Curve.add_point( Vector2(randf() * 50,randf() * 50), randf() * 50,randf() * 50, randi() % 3, randi() % 3 )) #TangentMode
		#q_Curve.bake()
		
		q_Curve.clean_dupes()
		q_Curve.clear_points()
		
		qq += str(q_Curve.get_point_count())
		#qq += str(q_Curve.get_point_left_mode( 0 ))
		#qq += str(q_Curve.get_point_left_tangent( 0 ))
		#qq += str(q_Curve.get_point_position( 0 ))
		#qq += str(q_Curve.get_point_right_mode( 0 ))
		#qq += str(q_Curve.get_point_right_tangent( 0 ))
		
		qq += str(q_Curve.interpolate( randf() * 50 ))
		qq += str(q_Curve.interpolate_baked( randf() * 50 ))
		
		#q_Curve.remove_point( 0)
		
		#q_Curve.set_point_left_mode( 0, randi() % 3 )#TangentMode
		#q_Curve.set_point_left_tangent( 0, randf() * 50)
		#qq += str(q_Curve.set_point_offset( 0, randf() * 50 ))
		#q_Curve.set_point_right_mode( 0, randi() % 3 )#TangentMode
		#q_Curve.set_point_right_tangent( 0, randf() * 50 )
		#q_Curve.set_point_value( 0, randf() * 50 )
		
		if Autoload.WRONG_BUGS:
			q_Curve.set_min_value(randf() * 1000 - 500)
			q_Curve.set_max_value(randf() * 1000 - 500)
			q_Curve.set_bake_resolution(randi() % 10 - 500)
			for _i in range(3):
				qq += str(q_Curve.add_point( Vector2(randf() * 1000 - 500,randf() * 1000 - 500), randf() * 1000 - 500,randf() * 1000 - 500, randi() % 1000 - 500, randi() % 1000 - 500 )) #TangentMode
			#TOO SLOW q_Curve.bake()

			q_Curve.clean_dupes()
			q_Curve.clear_points()

			qq += str(q_Curve.get_point_count())
			qq += str(q_Curve.get_point_left_mode(randi() % 1000 - 500 ))
			qq += str(q_Curve.get_point_left_tangent(randi() % 1000 - 500 ))
			qq += str(q_Curve.get_point_position(randi() % 1000 - 500 ))
			qq += str(q_Curve.get_point_right_mode(randi() % 1000 - 500 ))
			qq += str(q_Curve.get_point_right_tangent(randi() % 1000 - 500 ))

			qq += str(q_Curve.interpolate( randf() * 1000 - 500 ))
			qq += str(q_Curve.interpolate_baked( randf() * 1000 - 500 ))

			q_Curve.remove_point(randi() % 1000 - 500)

			q_Curve.set_point_left_mode(randi() % 1000 - 500, randi() % 1000 - 500 )#TangentMode
			q_Curve.set_point_left_tangent(randi() % 1000 - 500, randf() * 1000 - 500)
			qq += str(q_Curve.set_point_offset(randi() % 1000 - 500, randf() * 1000 - 500 ))
			q_Curve.set_point_right_mode(randi() % 1000 - 500, randi() % 1000 - 500 )#TangentMode
			q_Curve.set_point_right_tangent(randi() % 1000 - 500, randf() * 1000 - 500 )
			q_Curve.set_point_value(randi() % 1000 - 500, randf() * 1000 - 500 )
