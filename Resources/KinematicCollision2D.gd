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
		
		var q_KinematicCollision2D : KinematicCollision2D = KinematicCollision2D.new()
		
		qq += str(q_KinematicCollision2D.get_position())
		qq += str(q_KinematicCollision2D.get_normal())
		qq += str(q_KinematicCollision2D.get_travel())
		qq += str(q_KinematicCollision2D.get_remainder())
		#qq += str(q_KinematicCollision2D.get_local_shape())
		qq += str(q_KinematicCollision2D.get_collider())
		qq += str(q_KinematicCollision2D.get_collider_id() )
		qq += str(q_KinematicCollision2D.get_collider_shape())
		qq += str(q_KinematicCollision2D.get_collider_shape_index())
		qq += str(q_KinematicCollision2D.get_collider_velocity())
		qq += str(q_KinematicCollision2D.get_collider_metadata())
		
		if Autoload.WRONG_BUGS:
			pass
