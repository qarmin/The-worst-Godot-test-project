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
		
		var q_CameraFeed : CameraFeed = CameraFeed.new()
		
#ACTIVATE SPAM		q_CameraFeed.set_active(bool(randi()%2))
		q_CameraFeed.set_transform(Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		
		qq += str(q_CameraFeed.get_id())
		qq += str(q_CameraFeed.get_name())
		qq += str(q_CameraFeed.get_position())
		
		if Autoload.WRONG_BUGS:
			q_CameraFeed.set_transform(Transform2D(Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
			
			qq += str(q_CameraFeed.get_id())
			qq += str(q_CameraFeed.get_name())
			qq += str(q_CameraFeed.get_position())
