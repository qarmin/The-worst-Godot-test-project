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
		
		var q_Basis : Basis
		
		q_Basis = Basis( Quat(randf() * 50,randf() * 50,randf() * 50,randf() * 50) )
		q_Basis = Basis( Vector3(randf() * 50,randf() * 50,randf() * 50))
		#q_Basis = Basis( Vector3(randf() * 50,randf() * 50,randf() * 50), randf() * 50)
		q_Basis = Basis( Vector3(randf() * 50,randf() * 50,randf() * 50), Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50) )
		
		qq += str(q_Basis.determinant())
		
		qq += str(q_Basis.get_euler())
		qq += str(q_Basis.get_orthogonal_index())
		#qq += str(q_Basis.get_rotation_quat())
		qq += str(q_Basis.get_scale())
		
		qq += str(q_Basis.inverse())
		qq += str(q_Basis.is_equal_approx( q_Basis, randf() * 50))
		qq += str(q_Basis.orthonormalized())
		#qq += str(q_Basis.rotated( Vector3(randf() * 50,randf() * 50,randf() * 50),randf() * 50))
		qq += str(q_Basis.scaled( Vector3(randf() * 50,randf() * 50,randf() * 50) ))
		#qq += str(q_Basis.slerp( q_Basis, randf() * 50))
		
		qq += str(q_Basis.tdotx( Vector3(randf() * 50,randf() * 50,randf() * 50) ))
		qq += str(q_Basis.tdoty( Vector3(randf() * 50,randf() * 50,randf() * 50) ))
		qq += str(q_Basis.tdotz( Vector3(randf() * 50,randf() * 50,randf() * 50) ))
		
		qq += str(q_Basis.transposed())
		
		qq += str(q_Basis.xform( Vector3(randf() * 50,randf() * 50,randf() * 50) ))
		qq += str(q_Basis.xform_inv(Vector3(randf() * 50,randf() * 50,randf() * 50) ))
		
		if Autoload.WRONG_BUGS:
			pass
