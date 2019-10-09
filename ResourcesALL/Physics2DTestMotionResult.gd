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
		
		var q_Physics2DTestMotionResult : Physics2DTestMotionResult = Physics2DTestMotionResult.new()
		if !Autoload.RANDI:
			
			qq += str(q_Physics2DTestMotionResult.get_motion())
			qq += str(q_Physics2DTestMotionResult.get_motion_remainder())
			qq += str(q_Physics2DTestMotionResult.get_collision_point())
			qq += str(q_Physics2DTestMotionResult.get_collision_normal())
			qq += str(q_Physics2DTestMotionResult.get_collider_velocity())
			qq += str(q_Physics2DTestMotionResult.get_collider_id())
			qq += str(q_Physics2DTestMotionResult.get_collider_rid())
			qq += str(q_Physics2DTestMotionResult.get_collider())
			qq += str(q_Physics2DTestMotionResult.get_collider_shape())
			
			if Autoload.WRONG_BUGS:
				qq += str(q_Physics2DTestMotionResult.get_motion())
				qq += str(q_Physics2DTestMotionResult.get_motion_remainder())
				qq += str(q_Physics2DTestMotionResult.get_collision_point())
				qq += str(q_Physics2DTestMotionResult.get_collision_normal())
				qq += str(q_Physics2DTestMotionResult.get_collider_velocity())
				qq += str(q_Physics2DTestMotionResult.get_collider_id())
				qq += str(q_Physics2DTestMotionResult.get_collider_rid())
				qq += str(q_Physics2DTestMotionResult.get_collider())
				qq += str(q_Physics2DTestMotionResult.get_collider_shape())

		else: #RANDI
			if randi() % 2 == 1:
				qq += str(q_Physics2DTestMotionResult.get_motion())
			if randi() % 2 == 1:
				qq += str(q_Physics2DTestMotionResult.get_motion_remainder())
			if randi() % 2 == 1:
				qq += str(q_Physics2DTestMotionResult.get_collision_point())
			if randi() % 2 == 1:
				qq += str(q_Physics2DTestMotionResult.get_collision_normal())
			if randi() % 2 == 1:
				qq += str(q_Physics2DTestMotionResult.get_collider_velocity())
			if randi() % 2 == 1:
				qq += str(q_Physics2DTestMotionResult.get_collider_id())
			if randi() % 2 == 1:
				qq += str(q_Physics2DTestMotionResult.get_collider_rid())
			if randi() % 2 == 1:
				qq += str(q_Physics2DTestMotionResult.get_collider())
			if randi() % 2 == 1:
				qq += str(q_Physics2DTestMotionResult.get_collider_shape())
