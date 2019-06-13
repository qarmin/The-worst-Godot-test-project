extends AnimatedSprite3D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		var SF : SpriteFrames = SpriteFrames.new()
		for i in range(4):
			SF.add_frame("default",load("res://Sprite" + str(i + 1) + ".png"),-1)
		
		set_sprite_frames(SF)
		set_animation("default")
		set_frame(bool(randi()%2))
		_set_playing(bool(randi()%2))
		qq += str(is_playing())
		play("default")
		stop()

		if Autoload.WRONG_BUGS:
			SF = SpriteFrames.new()
			for i in range(4):
				SF.add_frame(str(randi() % 1000000),load("res://Sprite" + str(i + 1) + ".png"),randi() % 1000 - 500)
			
			set_sprite_frames(SF)
			set_animation("default")
			set_frame(bool(randi()%2))
			_set_playing(bool(randi()%2))
			qq += str(is_playing())
			play(str(randi() % 1000000))
			stop()
