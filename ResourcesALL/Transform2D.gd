extends Node2D

var q_Transform2D : Transform2D = Autoload.get_transform2d()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
#	BUG		if randi() % 2 == 1:
#				q_Transform2D = Transform2D(Transform( Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3() ))
			if randi() % 2 == 1:
				q_Transform2D = Transform2D( Autoload.get_vector2(), Autoload.get_vector2(), Autoload.get_vector2() )
			if randi() % 2 == 1:
				q_Transform2D = Transform2D( Autoload.get_float(), Autoload.get_vector2() )

		if randi() % 2 == 1:
			Autoload.qq = str(q_Transform2D.affine_inverse())

		if randi() % 2 == 1:
			Autoload.qq = str(q_Transform2D.basis_xform( Autoload.get_vector2() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Transform2D.basis_xform_inv( Autoload.get_vector2() ))

		if randi() % 2 == 1:
			Autoload.qq = str(q_Transform2D.get_origin())
		if randi() % 2 == 1:
			Autoload.qq = str(q_Transform2D.get_rotation())
		if randi() % 2 == 1:
			Autoload.qq = str(q_Transform2D.get_scale())

		if randi() % 2 == 1:
			Autoload.qq = str(q_Transform2D.interpolate_with( Autoload.get_transform2d(), Autoload.get_float() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Transform2D.inverse())
		if randi() % 2 == 1:
			Autoload.qq = str(q_Transform2D.orthonormalized())
		if randi() % 2 == 1:
			Autoload.qq = str(q_Transform2D.rotated( Autoload.get_float() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Transform2D.scaled( Autoload.get_vector2() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Transform2D.translated( Autoload.get_vector2()))

		if randi() % 2 == 1:
			Autoload.qq = str(q_Transform2D.xform( Autoload.get_vector2() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Transform2D.xform_inv( Autoload.get_vector2() ))
