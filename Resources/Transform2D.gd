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
		
		var q_Transform2D : Transform2D
		
		q_Transform2D = Transform2D(Transform( Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50) ))
		q_Transform2D = Transform2D( Vector2(randf() * 50,randf() * 50), Vector2(randf() * 50,randf() * 50), Vector2(randf() * 50,randf() * 50) )
		q_Transform2D = Transform2D( randf() * 50, Vector2(randf() * 50,randf() * 50) )
		
		qq += str(q_Transform2D.affine_inverse())
		
		qq += str(q_Transform2D.basis_xform( Vector2(randf() * 50,randf() * 50) ))
		qq += str(q_Transform2D.basis_xform_inv( Vector2(randf() * 50,randf() * 50) ))
		
		qq += str(q_Transform2D.get_origin())
		qq += str(q_Transform2D.get_rotation())
		qq += str(q_Transform2D.get_scale())
		
		qq += str(q_Transform2D.interpolate_with( Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)), randf() * 50 ))
		qq += str(q_Transform2D.inverse())
		qq += str(q_Transform2D.orthonormalized())
		qq += str(q_Transform2D.rotated( randf() * 50 ))
		qq += str(q_Transform2D.scaled( Vector2(randf() * 50,randf() * 50) ))
		qq += str(q_Transform2D.translated( Vector2(randf() * 50,randf() * 50)))
		
		qq += str(q_Transform2D.xform( Vector2(randf() * 50,randf() * 50) ))
		qq += str(q_Transform2D.xform_inv( Vector2(randf() * 50,randf() * 50) ))
		
		if Autoload.WRONG_BUGS:
			q_Transform2D = Transform2D(Transform( Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500) ))
			q_Transform2D = Transform2D( Vector2(randf() * 1000 - 500,randf() * 1000 - 500), Vector2(randf() * 1000 - 500,randf() * 1000 - 500), Vector2(randf() * 1000 - 500,randf() * 1000 - 500) )
			q_Transform2D = Transform2D( randf() * 1000 - 500, Vector2(randf() * 1000 - 500,randf() * 1000 - 500) )
			
			qq += str(q_Transform2D.affine_inverse())
			
			qq += str(q_Transform2D.basis_xform( Vector2(randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_Transform2D.basis_xform_inv( Vector2(randf() * 1000 - 500,randf() * 1000 - 500) ))
			
			qq += str(q_Transform2D.get_origin())
			qq += str(q_Transform2D.get_rotation())
			qq += str(q_Transform2D.get_scale())
			
			qq += str(q_Transform2D.interpolate_with( Transform2D(Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500)), randf() * 1000 - 500 ))
			qq += str(q_Transform2D.inverse())
			qq += str(q_Transform2D.orthonormalized())
			qq += str(q_Transform2D.rotated( randf() * 1000 - 500 ))
			qq += str(q_Transform2D.scaled( Vector2(randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_Transform2D.translated( Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
			
			qq += str(q_Transform2D.xform( Vector2(randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_Transform2D.xform_inv( Vector2(randf() * 1000 - 500,randf() * 1000 - 500) ))
