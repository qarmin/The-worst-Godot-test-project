extends Node2D

var q_Curve3D : Curve3D = Curve3D.new()
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
			q_Curve3D = Curve3D.new()
			
		
		if randi() % 2 == 1:
			if Autoload.SLOW_FUNCTIONS:
				q_Curve3D.add_point( Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()), Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()), Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()), Autoload.get_randi() )
		if randi() % 2 == 1:
			q_Curve3D.clear_points()

		if Autoload.SLOW_FUNCTIONS:
			if randi() % 2 == 1:
				qq += str(q_Curve3D.get_baked_length())
			if randi() % 2 == 1:
				qq += str(q_Curve3D.get_baked_points())
			if randi() % 2 == 1:
				qq += str(q_Curve3D.get_closest_offset( Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()) ))
			if randi() % 2 == 1:
				qq += str(q_Curve3D.get_closest_point( Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			qq += str(q_Curve3D.get_point_count())
		if randi() % 2 == 1:
			qq += str(q_Curve3D.get_point_in( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_Curve3D.get_point_out( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_Curve3D.get_point_position( Autoload.get_randi() ))

		if randi() % 2 == 1:
			qq += str(q_Curve3D.interpolate( Autoload.get_randi(), Autoload.get_randf() ))
		if randi() % 2 == 1:
			qq += str(q_Curve3D.interpolate_baked( Autoload.get_randf(), bool(randi()%2)))
		if randi() % 2 == 1:
			qq += str(q_Curve3D.interpolatef( Autoload.get_randf() ))

		if randi() % 2 == 1:
			q_Curve3D.remove_point( Autoload.get_randi() )

		if randi() % 2 == 1:
			q_Curve3D.set_point_in( Autoload.get_randi(), Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()) )
		if randi() % 2 == 1:
			q_Curve3D.set_point_out( Autoload.get_randi(), Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()) )
		if randi() % 2 == 1:
			q_Curve3D.set_point_position( Autoload.get_randi(), Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()) )

		if Autoload.SLOW_FUNCTIONS:
			if randi() % 2 == 1:
				qq += str(q_Curve3D.tessellate( Autoload.get_randi(), Autoload.get_randf() ))
