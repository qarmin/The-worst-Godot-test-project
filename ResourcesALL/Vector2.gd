extends Node2D

var q_Vector2 : Vector2 = Vector2(Autoload.get_randf(),Autoload.get_randf())
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
			q_Vector2 = Vector2(Autoload.get_randf(),Autoload.get_randf())
			
		if randi() % 2 == 1:
			qq += str(q_Vector2.angle())
		if randi() % 2 == 1:
			qq += str(q_Vector2.angle_to( Vector2(Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			qq += str(q_Vector2.angle_to_point( Vector2(Autoload.get_randf(),Autoload.get_randf())))
			
		if randi() % 2 == 1:
			qq += str(q_Vector2.aspect())
		if randi() % 2 == 1:
			qq += str(q_Vector2.bounce( Vector2(Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			qq += str(q_Vector2.ceil())
		if randi() % 2 == 1:
			qq += str(q_Vector2.clamped( Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(q_Vector2.cross( Vector2(Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			qq += str(q_Vector2.cubic_interpolate( Vector2(Autoload.get_randf(),Autoload.get_randf()), Vector2(Autoload.get_randf(),Autoload.get_randf()), Vector2(Autoload.get_randf(),Autoload.get_randf()), Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(q_Vector2.direction_to( Vector2(Autoload.get_randf(),Autoload.get_randf()) ))
			
		if randi() % 2 == 1:
			qq += str(q_Vector2.distance_squared_to( Vector2(Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			qq += str(q_Vector2.distance_to( Vector2(Autoload.get_randf(),Autoload.get_randf()) ))
			
		if randi() % 2 == 1:
			qq += str(q_Vector2.dot( Vector2(Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			qq += str(q_Vector2.floor())
		if randi() % 2 == 1:
			qq += str(q_Vector2.is_normalized())
			
		if randi() % 2 == 1:
			qq += str(q_Vector2.length())
		if randi() % 2 == 1:
			qq += str(q_Vector2.length_squared())
			
		if randi() % 2 == 1:
			qq += str(q_Vector2.linear_interpolate( Vector2(Autoload.get_randf(),Autoload.get_randf()), Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(q_Vector2.move_toward( Vector2(Autoload.get_randf(),Autoload.get_randf()), Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(q_Vector2.normalized())
		if randi() % 2 == 1:
			qq += str(q_Vector2.project( Vector2(Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			qq += str(q_Vector2.reflect( Vector2(Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			qq += str(q_Vector2.rotated( Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(q_Vector2.round())
		if randi() % 2 == 1:
			qq += str(q_Vector2.slerp( Vector2(Autoload.get_randf(),Autoload.get_randf()), Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(q_Vector2.slide( Vector2(Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			qq += str(q_Vector2.snapped( Vector2(Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			qq += str(q_Vector2.tangent())
