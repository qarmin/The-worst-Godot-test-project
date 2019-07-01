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
		
		var q_Vector3 : Vector3

		q_Vector3 = Vector3(randf() * 50,randf() * 50,randf() * 50)
		
		qq += str(q_Vector3.abs())
		qq += str(q_Vector3.angle_to( Vector3(randf() * 50,randf() * 50,randf() * 50) ))
		#qq += str(q_Vector3.bounce( Vector3(randf() * 50,randf() * 50,randf() * 50)))
		qq += str(q_Vector3.ceil())
		qq += str(q_Vector3.cross( Vector3(randf() * 50,randf() * 50,randf() * 50) ))
		qq += str(q_Vector3.cubic_interpolate( Vector3(randf() * 50,randf() * 50,randf() * 50), Vector3(randf() * 50,randf() * 50,randf() * 50), Vector3(randf() * 50,randf() * 50,randf() * 50), randf() * 50))
		qq += str(q_Vector3.direction_to( Vector3(randf() * 50,randf() * 50,randf() * 50) ))
		
		qq += str(q_Vector3.distance_squared_to( Vector3(randf() * 50,randf() * 50,randf() * 50) ))
		qq += str(q_Vector3.distance_to( Vector3(randf() * 50,randf() * 50,randf() * 50) ))
		
		qq += str(q_Vector3.dot( Vector3(randf() * 50,randf() * 50,randf() * 50) ))
		qq += str(q_Vector3.floor())
		qq += str(q_Vector3.inverse())
		qq += str(q_Vector3.is_normalized())
		
		qq += str(q_Vector3.length())
		qq += str(q_Vector3.length_squared())
		
		qq += str(q_Vector3.linear_interpolate( Vector3(randf() * 50,randf() * 50,randf() * 50), randf() * 50))
		qq += str(q_Vector3.max_axis())
		qq += str(q_Vector3.min_axis())
		qq += str(q_Vector3.move_toward( Vector3(randf() * 50,randf() * 50,randf() * 50), randf() * 50))
		qq += str(q_Vector3.normalized())
		qq += str(q_Vector3.outer( Vector3(randf() * 50,randf() * 50,randf() * 50) ))
		qq += str(q_Vector3.project( Vector3(randf() * 50,randf() * 50,randf() * 50) ))
		#qq += str(q_Vector3.reflect( Vector3(randf() * 50,randf() * 50,randf() * 50)))
		#qq += str(q_Vector3.rotated( Vector3(randf() * 50,randf() * 50,randf() * 50), randf() * 50))
		qq += str(q_Vector3.round())
		#qq += str(q_Vector3.slerp( Vector3(randf() * 50,randf() * 50,randf() * 50), randf() * 50))
		#qq += str(q_Vector3.slide( Vector3(randf() * 50,randf() * 50,randf() * 50) ))
		qq += str(q_Vector3.snapped( Vector3(randf() * 50,randf() * 50,randf() * 50) ))
		qq += str(q_Vector3.to_diagonal_matrix())

		if Autoload.WRONG_BUGS:
			q_Vector3 = Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)
			
			qq += str(q_Vector3.abs())
			qq += str(q_Vector3.angle_to( Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_Vector3.bounce( Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
			qq += str(q_Vector3.ceil())
			qq += str(q_Vector3.cross( Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_Vector3.cubic_interpolate( Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500), Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500), Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500), randf() * 1000 - 500))
			qq += str(q_Vector3.direction_to( Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500) ))
			
			qq += str(q_Vector3.distance_squared_to( Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_Vector3.distance_to( Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500) ))
			
			qq += str(q_Vector3.dot( Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_Vector3.floor())
			qq += str(q_Vector3.inverse())
			qq += str(q_Vector3.is_normalized())
			
			qq += str(q_Vector3.length())
			qq += str(q_Vector3.length_squared())
			
			qq += str(q_Vector3.linear_interpolate( Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500), randf() * 1000 - 500))
			qq += str(q_Vector3.max_axis())
			qq += str(q_Vector3.min_axis())
			qq += str(q_Vector3.move_toward( Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500), randf() * 1000 - 500))
			qq += str(q_Vector3.normalized())
			qq += str(q_Vector3.outer( Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_Vector3.project( Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_Vector3.reflect( Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
			qq += str(q_Vector3.rotated( Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500), randf() * 1000 - 500))
			qq += str(q_Vector3.round())
			qq += str(q_Vector3.slerp( Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500), randf() * 1000 - 500))
			qq += str(q_Vector3.slide( Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_Vector3.snapped( Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_Vector3.to_diagonal_matrix())
