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
		if !Autoload.RANDI:
			
			var q_Quat : Quat
	
			q_Quat = Quat(randf() * 50,randf() * 50,randf() * 50,randf() * 50)
			#q_Quat = Quat(Vector3(randf() * 50,randf() * 50,randf() * 50))
			#q_Quat = Quat(Vector3(randf() * 50,randf() * 50,randf() * 50),randf() * 50)
			q_Quat = Quat(Basis( Vector3(randf() * 50,randf() * 50,randf() * 50)))
	
			#qq += str(q_Quat.cubic_slerp( Quat(randf() * 50,randf() * 50,randf() * 50,randf() * 50), Quat(randf() * 50,randf() * 50,randf() * 50,randf() * 50), Quat(randf() * 50,randf() * 50,randf() * 50,randf() * 50), randf() * 50))
			qq += str(q_Quat.dot( Quat(randf() * 50,randf() * 50,randf() * 50,randf() * 50)))
			qq += str(q_Quat.get_euler())
			qq += str(q_Quat.inverse())
			qq += str(q_Quat.is_normalized())
	
			qq += str(q_Quat.length())
			qq += str(q_Quat.length_squared())
	
			qq += str(q_Quat.normalized())
	
			#q_Quat.set_axis_angle( Vector3(randf() * 50,randf() * 50,randf() * 50), randf() * 50)
			q_Quat.set_euler( Vector3(randf() * 50,randf() * 50,randf() * 50) )
	
			#qq += str(q_Quat.slerp( Quat(randf() * 50,randf() * 50,randf() * 50,randf() * 50), randf() * 50))
			#qq += str(q_Quat.slerpni(Quat(randf() * 50,randf() * 50,randf() * 50,randf() * 50), randf() * 50))
	
			qq += str(q_Quat.xform( Vector3(randf() * 50,randf() * 50,randf() * 50)))
	
			if Autoload.WRONG_BUGS:
				q_Quat = Quat(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)
				#q_Quat = Quat(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				q_Quat = Quat(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Quat = Quat(Basis( Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
		
				qq += str(q_Quat.cubic_slerp( Quat(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), Quat(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), Quat(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), randf() * Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(q_Quat.dot( Quat(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
				qq += str(q_Quat.get_euler())
				qq += str(q_Quat.inverse())
				qq += str(q_Quat.is_normalized())
		
				qq += str(q_Quat.length())
				qq += str(q_Quat.length_squared())
		
				qq += str(q_Quat.normalized())
		
				q_Quat.set_axis_angle( Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_Quat.set_euler( Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) )
		
				qq += str(q_Quat.slerp( Quat(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), randf() * Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(q_Quat.slerpni(Quat(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), randf() * Autoload.RANGE - Autoload.RANGE / 2))
		
				qq += str(q_Quat.xform( Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
