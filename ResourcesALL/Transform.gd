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
		
		var q_Transform : Transform

		q_Transform = Transform( Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50) )
		q_Transform = Transform( Basis( Quat(randf() * 50,randf() * 50,randf() * 50,randf() * 50)),Vector3(randf() * 50,randf() * 50,randf() * 50))
		q_Transform = Transform( Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		q_Transform = Transform( Quat(randf() * 50,randf() * 50,randf() * 50,randf() * 50) )
		q_Transform = Transform( Basis( Quat(randf() * 50,randf() * 50,randf() * 50,randf() * 50) ))
		
		qq += str(q_Transform.affine_inverse())
		#qq += str(q_Transform.interpolate_with( Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)), randf() * 50))
		qq += str(q_Transform.inverse())
		qq += str(q_Transform.looking_at( Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50) ))
		qq += str(q_Transform.orthonormalized())
		#qq += str(q_Transform.rotated( Vector3(randf() * 50,randf() * 50,randf() * 50), randf() * 50))
		qq += str(q_Transform.scaled( Vector3(randf() * 50,randf() * 50,randf() * 50) ))
		qq += str(q_Transform.translated( Vector3(randf() * 50,randf() * 50,randf() * 50) ))
		
		qq += str(q_Transform.xform( randf() * 50))
		qq += str(q_Transform.xform_inv( randf() * 50))

		if Autoload.WRONG_BUGS:
			q_Transform = Transform( Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500) )
			q_Transform = Transform( Basis( Quat(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			q_Transform = Transform( Transform2D(Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
			q_Transform = Transform( Quat(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500) )
			q_Transform = Transform( Basis( Quat(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500) ))
			
			qq += str(q_Transform.affine_inverse())
			qq += str(q_Transform.interpolate_with( Transform(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)), randf() * 1000 - 500))
			qq += str(q_Transform.inverse())
			qq += str(q_Transform.looking_at( Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_Transform.orthonormalized())
			qq += str(q_Transform.rotated( Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500), randf() * 1000 - 500))
			qq += str(q_Transform.scaled( Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_Transform.translated( Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500) ))
			
			qq += str(q_Transform.xform( randf() * 1000 - 500))
			qq += str(q_Transform.xform_inv( randf() * 1000 - 500))
