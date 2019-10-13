extends Node2D

var q_Transform : Transform = Transform( Basis( Autoload.get_quat() ))
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
				q_Transform = Transform( Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3() )
			if randi() % 2 == 1:
				q_Transform = Transform( Autoload.get_basis(),Autoload.get_vector3())
			if randi() % 2 == 1:
				q_Transform = Transform( Autoload.get_transform2d())
			if randi() % 2 == 1:
				q_Transform = Transform( Autoload.get_quat() )
			if randi() % 2 == 1:
				q_Transform = Transform( Autoload.get_basis() )
			
		if randi() % 2 == 1:
			qq += str(q_Transform.affine_inverse())
		if randi() % 2 == 1:
			qq += str(q_Transform.interpolate_with( Autoload.get_transform() , Autoload.get_float()))
		if randi() % 2 == 1:
			qq += str(q_Transform.inverse())
		if randi() % 2 == 1:
			qq += str(q_Transform.looking_at( Autoload.get_vector3(),Autoload.get_vector3() ))
		if randi() % 2 == 1:
			qq += str(q_Transform.orthonormalized())
		if randi() % 2 == 1:
			qq += str(q_Transform.rotated( Autoload.get_vector3(), Autoload.get_float()))
		if randi() % 2 == 1:
			qq += str(q_Transform.scaled( Autoload.get_vector3() ))
		if randi() % 2 == 1:
			qq += str(q_Transform.translated( Autoload.get_vector3() ))
			
		if randi() % 2 == 1:
			qq += str(q_Transform.xform( Autoload.get_float()))
		if randi() % 2 == 1:
			qq += str(q_Transform.xform_inv( Autoload.get_float()))
