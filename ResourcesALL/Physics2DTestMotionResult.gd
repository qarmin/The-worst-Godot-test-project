extends Node2D

var q_Physics2DTestMotionResult : Physics2DTestMotionResult = Physics2DTestMotionResult.new()
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
			q_Physics2DTestMotionResult = Physics2DTestMotionResult.new()
		
		
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
