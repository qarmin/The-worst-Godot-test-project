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
		
		var q_Curve2D : Curve2D = Curve2D.new()
		
		q_Curve2D.clear_points() #MOVED
		for _i in range(5):
			q_Curve2D.add_point( Vector2(randf() * 50,randf() * 50), Vector2(randf() * 50,randf() * 50), Vector2(randf() * 50,randf() * 50), -1 )
		#MOVED q_Curve2D.clear_points()
		
		qq += str(q_Curve2D.get_baked_length())
		qq += str(q_Curve2D.get_baked_points())
		qq += str(q_Curve2D.get_closest_offset( Vector2(randf() * 50,randf() * 50) ))
		qq += str(q_Curve2D.get_closest_point( Vector2(randf() * 50,randf() * 50) ))
		qq += str(q_Curve2D.get_point_count())
		qq += str(q_Curve2D.get_point_in( 1 ))
		qq += str(q_Curve2D.get_point_out( 1 ))
		qq += str(q_Curve2D.get_point_position( 1 ))
		
		qq += str(q_Curve2D.interpolate( 1, randf() * 50 ))
		qq += str(q_Curve2D.interpolate_baked( randf() * 50, bool(randi()%2)))
		qq += str(q_Curve2D.interpolatef( randf() * 50 ))
		
		q_Curve2D.remove_point( 1 )
		
		q_Curve2D.set_point_in( 1, Vector2(randf() * 50,randf() * 50) )
		q_Curve2D.set_point_out( 1, Vector2(randf() * 50,randf() * 50) )
		q_Curve2D.set_point_position( 1, Vector2(randf() * 50,randf() * 50) )
		
		qq += str(q_Curve2D.tessellate( randi()%5, randf() * 50 ))
		
		if Autoload.WRONG_BUGS:
			pass
