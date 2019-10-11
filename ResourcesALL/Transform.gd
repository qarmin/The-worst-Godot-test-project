extends Node2D

var q_Transform : Transform = Transform( Basis( Quat(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()) ))
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
				q_Transform = Transform( Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()) )
			if randi() % 2 == 1:
				q_Transform = Transform( Basis( Quat(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
			if randi() % 2 == 1:
				q_Transform = Transform( Transform2D(Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf())))
			if randi() % 2 == 1:
				q_Transform = Transform( Quat(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()) )
			if randi() % 2 == 1:
				q_Transform = Transform( Basis( Quat(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()) ))
			
		if randi() % 2 == 1:
			qq += str(q_Transform.affine_inverse())
		if randi() % 2 == 1:
			qq += str(q_Transform.interpolate_with( Transform(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())), Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(q_Transform.inverse())
		if randi() % 2 == 1:
			qq += str(q_Transform.looking_at( Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			qq += str(q_Transform.orthonormalized())
		if randi() % 2 == 1:
			qq += str(q_Transform.rotated( Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()), Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(q_Transform.scaled( Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			qq += str(q_Transform.translated( Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()) ))
			
		if randi() % 2 == 1:
			qq += str(q_Transform.xform( Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(q_Transform.xform_inv( Autoload.get_randf()))
