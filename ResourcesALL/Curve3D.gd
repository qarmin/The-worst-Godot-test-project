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
			
		var q_Curve3D : Curve3D = Curve3D.new()
		if !Autoload.RANDI:
			
			q_Curve3D.clear_points() #MOVED
			for _i in range(5):
				q_Curve3D.add_point( Vector3(randf() * 50,randf() * 50,randf() * 50), Vector3(randf() * 50,randf() * 50,randf() * 50), Vector3(randf() * 50,randf() * 50,randf() * 50), -1 )
			#MOVED q_Curve3D.clear_points()
			
			if Autoload.SLOW_FUNCTIONS:
				qq += str(q_Curve3D.get_baked_length())
				qq += str(q_Curve3D.get_baked_points())
				qq += str(q_Curve3D.get_closest_offset( Vector3(randf() * 50,randf() * 50,randf() * 50) ))
				qq += str(q_Curve3D.get_closest_point( Vector3(randf() * 50,randf() * 50,randf() * 50) ))
			qq += str(q_Curve3D.get_point_count())
			qq += str(q_Curve3D.get_point_in( 1 ))
			qq += str(q_Curve3D.get_point_out( 1 ))
			qq += str(q_Curve3D.get_point_position( 1 ))
			
			qq += str(q_Curve3D.interpolate( 1, randf() * 50 ))
			qq += str(q_Curve3D.interpolate_baked( randf() * 50, bool(randi()%2)))
			qq += str(q_Curve3D.interpolatef( randf() * 50 ))
			
			q_Curve3D.remove_point( 1 )
			
			q_Curve3D.set_point_in( 1, Vector3(randf() * 50,randf() * 50,randf() * 50) )
			q_Curve3D.set_point_out( 1, Vector3(randf() * 50,randf() * 50,randf() * 50) )
			q_Curve3D.set_point_position( 1, Vector3(randf() * 50,randf() * 50,randf() * 50) )
			
			if Autoload.SLOW_FUNCTIONS:
				qq += str(q_Curve3D.tessellate( randi()%5, randf() * 50 ))
			
			if Autoload.WRONG_BUGS:
				q_Curve3D.clear_points() #MOVED
				if Autoload.SLOW_FUNCTIONS:
					q_Curve3D.add_point( Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), randi() % Autoload.RANGE - Autoload.RANGE / 2 )
				#MOVED q_Curve3D.clear_points()
	
				if Autoload.SLOW_FUNCTIONS:
					qq += str(q_Curve3D.get_baked_length())
					qq += str(q_Curve3D.get_baked_points())
					qq += str(q_Curve3D.get_closest_offset( Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) ))
					qq += str(q_Curve3D.get_closest_point( Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) ))
				qq += str(q_Curve3D.get_point_count())
				qq += str(q_Curve3D.get_point_in( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_Curve3D.get_point_out( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_Curve3D.get_point_position( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
	
				qq += str(q_Curve3D.interpolate( randi() % Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_Curve3D.interpolate_baked( randf() * Autoload.RANGE - Autoload.RANGE / 2, bool(randi()%2)))
				qq += str(q_Curve3D.interpolatef( randf() * Autoload.RANGE - Autoload.RANGE / 2 ))
	
				q_Curve3D.remove_point( randi() % Autoload.RANGE - Autoload.RANGE / 2 )
	
				q_Curve3D.set_point_in( randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) )
				q_Curve3D.set_point_out( randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) )
				q_Curve3D.set_point_position( randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) )
	
				if Autoload.SLOW_FUNCTIONS:
					qq += str(q_Curve3D.tessellate( randi() % Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2 ))

		else: #RANDI
			if randi() % 2 == 1:
				q_Curve3D.clear_points() #MOVED
			if randi() % 2 == 1:
				if Autoload.SLOW_FUNCTIONS:
					q_Curve3D.add_point( Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), randi() % Autoload.RANGE - Autoload.RANGE / 2 )
			#if randi() % 2 == 1:
				#MOVED q_Curve3D.clear_points()
	
				if Autoload.SLOW_FUNCTIONS:
					if randi() % 2 == 1:
						qq += str(q_Curve3D.get_baked_length())
					if randi() % 2 == 1:
						qq += str(q_Curve3D.get_baked_points())
					if randi() % 2 == 1:
						qq += str(q_Curve3D.get_closest_offset( Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) ))
					if randi() % 2 == 1:
						qq += str(q_Curve3D.get_closest_point( Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) ))
			if randi() % 2 == 1:
				qq += str(q_Curve3D.get_point_count())
			if randi() % 2 == 1:
				qq += str(q_Curve3D.get_point_in( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
			if randi() % 2 == 1:
				qq += str(q_Curve3D.get_point_out( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
			if randi() % 2 == 1:
				qq += str(q_Curve3D.get_point_position( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
	
			if randi() % 2 == 1:
				qq += str(q_Curve3D.interpolate( randi() % Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2 ))
			if randi() % 2 == 1:
				qq += str(q_Curve3D.interpolate_baked( randf() * Autoload.RANGE - Autoload.RANGE / 2, bool(randi()%2)))
			if randi() % 2 == 1:
				qq += str(q_Curve3D.interpolatef( randf() * Autoload.RANGE - Autoload.RANGE / 2 ))
	
			if randi() % 2 == 1:
				q_Curve3D.remove_point( randi() % Autoload.RANGE - Autoload.RANGE / 2 )
	
			if randi() % 2 == 1:
				q_Curve3D.set_point_in( randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) )
			if randi() % 2 == 1:
				q_Curve3D.set_point_out( randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) )
			if randi() % 2 == 1:
				q_Curve3D.set_point_position( randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) )
	
			if randi() % 2 == 1:
				if Autoload.SLOW_FUNCTIONS:
					qq += str(q_Curve3D.tessellate( randi() % Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2 ))
