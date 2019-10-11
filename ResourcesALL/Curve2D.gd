extends Node2D

var q_Curve2D : Curve2D = Curve2D.new()
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
			var q_Curve2D = Curve2D.new()
		
		
		if randi() % 2 == 1:
			for _i in range(5):
				q_Curve2D.add_point( Vector2(Autoload.get_randf(),Autoload.get_randf()), Vector2(Autoload.get_randf(),Autoload.get_randf()), Vector2(Autoload.get_randf(),Autoload.get_randf()), -1 )
		if randi() % 2 == 1:
			q_Curve2D.clear_points()

#	BUG	if randi() % 2 == 1:
#			qq += str(q_Curve2D.get_baked_length())
		if randi() % 2 == 1:
			qq += str(q_Curve2D.get_baked_points())
		if randi() % 2 == 1:
			qq += str(q_Curve2D.get_closest_offset( Vector2(Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			qq += str(q_Curve2D.get_closest_point( Vector2(Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			qq += str(q_Curve2D.get_point_count())
		if randi() % 2 == 1:
			qq += str(q_Curve2D.get_point_in(Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_Curve2D.get_point_out(Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_Curve2D.get_point_position(Autoload.get_randi() ))
			
		if randi() % 2 == 1:
			qq += str(q_Curve2D.interpolate(Autoload.get_randi(), Autoload.get_randf() ))
		if randi() % 2 == 1:
			qq += str(q_Curve2D.interpolate_baked( Autoload.get_randf(), bool(randi()%2)))
		if randi() % 2 == 1:
			qq += str(q_Curve2D.interpolatef( Autoload.get_randf() ))
			
		if randi() % 2 == 1:
			q_Curve2D.remove_point(Autoload.get_randi() )
			
		if randi() % 2 == 1:
			q_Curve2D.set_point_in(Autoload.get_randi(), Vector2(Autoload.get_randf(),Autoload.get_randf()) )
		if randi() % 2 == 1:
			q_Curve2D.set_point_out(Autoload.get_randi(), Vector2(Autoload.get_randf(),Autoload.get_randf()) )
		if randi() % 2 == 1:
			q_Curve2D.set_point_position(Autoload.get_randi(), Vector2(Autoload.get_randf(),Autoload.get_randf()) )
			
		if randi() % 2 == 1:
			if Autoload.SLOW_FUNCTIONS:
				qq += str(q_Curve2D.tessellate( Autoload.get_randi(), Autoload.get_randf() ))
