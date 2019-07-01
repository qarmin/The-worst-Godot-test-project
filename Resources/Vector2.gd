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
		
		var q_Vector2 : Vector2

		q_Vector2 = Vector2(randf() * 50,randf() * 50)
		
		qq += str(q_Vector2.angle())
		qq += str(q_Vector2.angle_to( Vector2(randf() * 50,randf() * 50) ))
		qq += str(q_Vector2.angle_to_point( Vector2(randf() * 50,randf() * 50)))
		
		qq += str(q_Vector2.aspect())
		#qq += str(q_Vector2.bounce( Vector2(randf() * 50,randf() * 50) ))
		qq += str(q_Vector2.ceil())
		qq += str(q_Vector2.clamped( randf() * 50))
		qq += str(q_Vector2.cross( Vector2(randf() * 50,randf() * 50) ))
		qq += str(q_Vector2.cubic_interpolate( Vector2(randf() * 50,randf() * 50), Vector2(randf() * 50,randf() * 50), Vector2(randf() * 50,randf() * 50), randf() * 50))
		qq += str(q_Vector2.direction_to( Vector2(randf() * 50,randf() * 50) ))
		
		qq += str(q_Vector2.distance_squared_to( Vector2(randf() * 50,randf() * 50) ))
		qq += str(q_Vector2.distance_to( Vector2(randf() * 50,randf() * 50) ))
		
		qq += str(q_Vector2.dot( Vector2(randf() * 50,randf() * 50) ))
		qq += str(q_Vector2.floor())
		qq += str(q_Vector2.is_normalized())
		
		qq += str(q_Vector2.length())
		qq += str(q_Vector2.length_squared())
		
		qq += str(q_Vector2.linear_interpolate( Vector2(randf() * 50,randf() * 50), randf() * 50))
		qq += str(q_Vector2.move_toward( Vector2(randf() * 50,randf() * 50), randf() * 50))
		qq += str(q_Vector2.normalized())
		qq += str(q_Vector2.project( Vector2(randf() * 50,randf() * 50) ))
		#qq += str(q_Vector2.reflect( Vector2(randf() * 50,randf() * 50) ))
		qq += str(q_Vector2.rotated( randf() * 50))
		qq += str(q_Vector2.round())
		#qq += str(q_Vector2.slerp( Vector2(randf() * 50,randf() * 50), randf() * 50))
		#qq += str(q_Vector2.slide( Vector2(randf() * 50,randf() * 50) ))
		qq += str(q_Vector2.snapped( Vector2(randf() * 50,randf() * 50) ))
		qq += str(q_Vector2.tangent())

		if Autoload.WRONG_BUGS:
			q_Vector2 = Vector2(randf() * 1000 - 500,randf() * 1000 - 500)
			
			qq += str(q_Vector2.angle())
			qq += str(q_Vector2.angle_to( Vector2(randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_Vector2.angle_to_point( Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
			
			qq += str(q_Vector2.aspect())
			qq += str(q_Vector2.bounce( Vector2(randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_Vector2.ceil())
			qq += str(q_Vector2.clamped( randf() * 1000 - 500))
			qq += str(q_Vector2.cross( Vector2(randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_Vector2.cubic_interpolate( Vector2(randf() * 1000 - 500,randf() * 1000 - 500), Vector2(randf() * 1000 - 500,randf() * 1000 - 500), Vector2(randf() * 1000 - 500,randf() * 1000 - 500), randf() * 1000 - 500))
			qq += str(q_Vector2.direction_to( Vector2(randf() * 1000 - 500,randf() * 1000 - 500) ))
			
			qq += str(q_Vector2.distance_squared_to( Vector2(randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_Vector2.distance_to( Vector2(randf() * 1000 - 500,randf() * 1000 - 500) ))
			
			qq += str(q_Vector2.dot( Vector2(randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_Vector2.floor())
			qq += str(q_Vector2.is_normalized())
			
			qq += str(q_Vector2.length())
			qq += str(q_Vector2.length_squared())
			
			qq += str(q_Vector2.linear_interpolate( Vector2(randf() * 1000 - 500,randf() * 1000 - 500), randf() * 1000 - 500))
			qq += str(q_Vector2.move_toward( Vector2(randf() * 1000 - 500,randf() * 1000 - 500), randf() * 1000 - 500))
			qq += str(q_Vector2.normalized())
			qq += str(q_Vector2.project( Vector2(randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_Vector2.reflect( Vector2(randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_Vector2.rotated( randf() * 1000 - 500))
			qq += str(q_Vector2.round())
			qq += str(q_Vector2.slerp( Vector2(randf() * 1000 - 500,randf() * 1000 - 500), randf() * 1000 - 500))
			qq += str(q_Vector2.slide( Vector2(randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_Vector2.snapped( Vector2(randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_Vector2.tangent())
