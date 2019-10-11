extends Node2D

var q_Curve : Curve = Curve.new()
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
		if randi() % 2 == 1:
			q_Curve = Curve.new()
			
		
		if randi() % 2 == 1:
			q_Curve.set_min_value(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Curve.set_max_value(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Curve.set_bake_resolution(randi() % 10 - 500)
		if randi() % 2 == 1:
			for _i in range(3):
				qq += str(q_Curve.add_point( Vector2(Autoload.get_randf(),Autoload.get_randf()), Autoload.get_randf(),Autoload.get_randf(), Autoload.get_randi(), Autoload.get_randi() )) #TangentMode
		if randi() % 2 == 1:
			if Autoload.SLOW_FUNCTIONS:
				q_Curve.bake()

		if randi() % 2 == 1:
			q_Curve.clean_dupes()
		if randi() % 2 == 1:
			q_Curve.clear_points()

		if randi() % 2 == 1:
			qq += str(q_Curve.get_point_count())
		if randi() % 2 == 1:
			qq += str(q_Curve.get_point_left_mode(Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_Curve.get_point_left_tangent(Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_Curve.get_point_position(Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_Curve.get_point_right_mode(Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_Curve.get_point_right_tangent(Autoload.get_randi() ))

		if randi() % 2 == 1:
			qq += str(q_Curve.interpolate( Autoload.get_randf() ))
		if randi() % 2 == 1:
			qq += str(q_Curve.interpolate_baked( Autoload.get_randf() ))

		if randi() % 2 == 1:
			q_Curve.remove_point(Autoload.get_randi())

		if randi() % 2 == 1:
			q_Curve.set_point_left_mode(Autoload.get_randi(), Autoload.get_randi() )#TangentMode
		if randi() % 2 == 1:
			q_Curve.set_point_left_tangent(Autoload.get_randi(), Autoload.get_randf())
		if randi() % 2 == 1:
			qq += str(q_Curve.set_point_offset(Autoload.get_randi(), Autoload.get_randf() ))
		if randi() % 2 == 1:
			q_Curve.set_point_right_mode(Autoload.get_randi(), Autoload.get_randi() )#TangentMode
		if randi() % 2 == 1:
			q_Curve.set_point_right_tangent(Autoload.get_randi(), Autoload.get_randf() )
		if randi() % 2 == 1:
			q_Curve.set_point_value(Autoload.get_randi(), Autoload.get_randf() )
