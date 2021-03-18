extends Node2D

var q_Transform : Transform = Autoload.get_transform()

func _process(delta) -> void:
	
	if randi() % 20:
		if randi() % 2 == 1:
			q_Transform = Transform( Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3())
		if randi() % 2 == 1:
			q_Transform = Transform( Autoload.get_basis(),Autoload.get_vector3())
		if randi() % 2 == 1:
			q_Transform = Transform( Autoload.get_transform2d())
		if randi() % 2 == 1:
			q_Transform = Transform( Autoload.get_quat())
		if randi() % 2 == 1:
			q_Transform = Transform( Autoload.get_basis())

	if randi() % 2 == 1:
		q_Transform.affine_inverse()
	if randi() % 2 == 1:
		q_Transform.interpolate_with( Autoload.get_transform() , Autoload.get_float())
	if randi() % 2 == 1:
		q_Transform.inverse()
	if randi() % 2 == 1:
		q_Transform.looking_at( Autoload.get_vector3(),Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Transform.orthonormalized()
	if randi() % 2 == 1:
		q_Transform.rotated( Autoload.get_vector3(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Transform.scaled( Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Transform.translated( Autoload.get_vector3())

	if randi() % 2 == 1:
		q_Transform.xform( Autoload.get_float())
	if randi() % 2 == 1:
		q_Transform.xform_inv( Autoload.get_float())
