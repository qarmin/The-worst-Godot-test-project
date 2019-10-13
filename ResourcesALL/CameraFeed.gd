extends Node2D

var q_CameraFeed : CameraFeed = CameraFeed.new()
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
			q_CameraFeed = CameraFeed.new()
		
		
		if randi() % 2 == 1:
			q_CameraFeed.set_transform(Autoload.get_transform2d())
			
		if randi() % 2 == 1:
			qq += str(q_CameraFeed.get_id())
		if randi() % 2 == 1:
			qq += str(q_CameraFeed.get_name())
		if randi() % 2 == 1:
			qq += str(q_CameraFeed.get_position())
