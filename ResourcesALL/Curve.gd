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
			q_Curve.set_min_value(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_Curve.set_max_value(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_Curve.set_bake_resolution(randi() % 10 - 500)
		if randi() % 2 == 1:
			for _i in range(3):
				qq += str(q_Curve.add_point( Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 )) #TangentMode
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
			qq += str(q_Curve.get_point_left_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_Curve.get_point_left_tangent(randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_Curve.get_point_position(randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_Curve.get_point_right_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_Curve.get_point_right_tangent(randi() % Autoload.RANGE - Autoload.RANGE / 2 ))

		if randi() % 2 == 1:
			qq += str(q_Curve.interpolate( randf() * Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_Curve.interpolate_baked( randf() * Autoload.RANGE - Autoload.RANGE / 2 ))

		if randi() % 2 == 1:
			q_Curve.remove_point(randi() % Autoload.RANGE - Autoload.RANGE / 2)

		if randi() % 2 == 1:
			q_Curve.set_point_left_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 )#TangentMode
		if randi() % 2 == 1:
			q_Curve.set_point_left_tangent(randi() % Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			qq += str(q_Curve.set_point_offset(randi() % Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			q_Curve.set_point_right_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 )#TangentMode
		if randi() % 2 == 1:
			q_Curve.set_point_right_tangent(randi() % Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2 )
		if randi() % 2 == 1:
			q_Curve.set_point_value(randi() % Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2 )
