extends AnimatedSprite3D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
					
		if randi() % 2 == 1:
			set_sprite_frames(Autoload.loadA("res://RES/SpriteFrames.tres"))
		if randi() % 2 == 1:
			set_animation(Autoload.get_string())
		if randi() % 2 == 1:
			set_frame(bool(randi()%2))
		if randi() % 2 == 1:
			_set_playing(bool(randi()%2))
		if randi() % 2 == 1:
			qq += str(is_playing())
		if randi() % 2 == 1:
			play(str(randi()%9))
		if randi() % 2 == 1:
			stop()
