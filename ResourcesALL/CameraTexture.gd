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
		
		var q_CameraTexture : CameraTexture = CameraTexture.new()
		if !Autoload.RANDI:
			
			q_CameraTexture.set_camera_feed_id(randi()%50)
			q_CameraTexture.set_which_feed(randi() % 3)
			q_CameraTexture.set_camera_active(bool(randi()%2))
			
			if Autoload.WRONG_BUGS:
				q_CameraTexture.set_camera_feed_id(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_CameraTexture.set_which_feed(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_CameraTexture.set_camera_active(bool(randi()%2))
		else: #RANDI
			if randi() % 2 == 1:
				q_CameraTexture.set_camera_feed_id(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_CameraTexture.set_which_feed(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_CameraTexture.set_camera_active(bool(randi()%2))
