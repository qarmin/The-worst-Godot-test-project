extends Node2D

var q_Basis : Basis = Autoload.get_basis()
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
			if randi() % 2 == 1:
				q_Basis = Basis( Autoload.get_quat() )
			if randi() % 2 == 1:
				q_Basis = Basis( Autoload.get_vector3())
			if randi() % 2 == 1:
				q_Basis = Basis( Autoload.get_vector3(), Autoload.get_float())
			if randi() % 2 == 1:
				q_Basis = Basis( Autoload.get_vector3(), Autoload.get_vector3(),Autoload.get_vector3() )
			
		if randi() % 2 == 1:
			qq += str(q_Basis.determinant())
			
		if randi() % 2 == 1:
			qq += str(q_Basis.get_euler())
		if randi() % 2 == 1:
			qq += str(q_Basis.get_orthogonal_index())
		if randi() % 2 == 1:
			qq += str(q_Basis.get_rotation_quat())
		if randi() % 2 == 1:
			qq += str(q_Basis.get_scale())
			
		if randi() % 2 == 1:
			qq += str(q_Basis.inverse())
		if randi() % 2 == 1:
			qq += str(q_Basis.is_equal_approx( Autoload.get_basis(), Autoload.get_float()))
		if randi() % 2 == 1:
			qq += str(q_Basis.orthonormalized())
		if randi() % 2 == 1:
			qq += str(q_Basis.rotated( Autoload.get_vector3(),Autoload.get_float()))
		if randi() % 2 == 1:
			qq += str(q_Basis.scaled( Autoload.get_vector3() ))
		if randi() % 2 == 1:
			qq += str(q_Basis.slerp( Autoload.get_basis(), Autoload.get_float()))
			
		if randi() % 2 == 1:
			qq += str(q_Basis.tdotx( Autoload.get_vector3() ))
		if randi() % 2 == 1:
			qq += str(q_Basis.tdoty( Autoload.get_vector3() ))
		if randi() % 2 == 1:
			qq += str(q_Basis.tdotz( Autoload.get_vector3() ))
			
		if randi() % 2 == 1:
			qq += str(q_Basis.transposed())
			
		if randi() % 2 == 1:
			qq += str(q_Basis.xform( Autoload.get_vector3() ))
		if randi() % 2 == 1:
			qq += str(q_Basis.xform_inv(Autoload.get_vector3() ))
