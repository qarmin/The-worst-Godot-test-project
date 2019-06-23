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
		
		var q_Plane : Plane
		
		q_Plane = Plane(randf() * 50,randf() * 50,randf() * 50,randf() * 50)
		q_Plane = Plane(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50))
		q_Plane = Plane(Vector3(randf() * 50,randf() * 50,randf() * 50),randf() * 50)
		
		qq += str(q_Plane.center())
		qq += str(q_Plane.distance_to( Vector3(randf() * 50,randf() * 50,randf() * 50) ))
		qq += str(q_Plane.get_any_point())
		qq += str(q_Plane.has_point( Vector3(randf() * 50,randf() * 50,randf() * 50), randf() * 50))
		
		qq += str(q_Plane.intersect_3( Plane(randf() * 50,randf() * 50,randf() * 50,randf() * 50), Plane(randf() * 50,randf() * 50,randf() * 50,randf() * 50) ))
		qq += str(q_Plane.intersects_ray( Vector3(randf() * 50,randf() * 50,randf() * 50), Vector3(randf() * 50,randf() * 50,randf() * 50) ))
		qq += str(q_Plane.intersects_segment( Vector3(randf() * 50,randf() * 50,randf() * 50), Vector3(randf() * 50,randf() * 50,randf() * 50) ))
		
		qq += str(q_Plane.is_point_over( Vector3(randf() * 50,randf() * 50,randf() * 50) ))
		qq += str(q_Plane.normalized())
		qq += str(q_Plane.project( Vector3(randf() * 50,randf() * 50,randf() * 50) ))
		
		if Autoload.WRONG_BUGS:
			pass
