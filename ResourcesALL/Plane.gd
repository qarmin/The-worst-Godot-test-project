extends Node2D

var q_Plane : Plane = Plane(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())
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
				q_Plane = Plane(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())
			if randi() % 2 == 1:
				q_Plane = Plane(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
			if randi() % 2 == 1:
				q_Plane = Plane(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Autoload.get_randf())
			
		if randi() % 2 == 1:
			qq += str(q_Plane.center())
		if randi() % 2 == 1:
			qq += str(q_Plane.distance_to( Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			qq += str(q_Plane.get_any_point())
		if randi() % 2 == 1:
			qq += str(q_Plane.has_point( Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()), Autoload.get_randf()))
			
		if randi() % 2 == 1:
			qq += str(q_Plane.intersect_3( Plane(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()), Plane(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			qq += str(q_Plane.intersects_ray( Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()), Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			qq += str(q_Plane.intersects_segment( Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()), Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()) ))
			
		if randi() % 2 == 1:
			qq += str(q_Plane.is_point_over( Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			qq += str(q_Plane.normalized())
		if randi() % 2 == 1:
			qq += str(q_Plane.project( Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()) ))
