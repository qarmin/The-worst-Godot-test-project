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
		var SF : SpriteFrames = SpriteFrames.new()
		
		if !Autoload.RANDI:
			
			for i in range(4):
				SF.add_frame("default",Autoload.loadA("res://RES/Sprite" + str(i + 1) + ".png",false),-1)
			
			set_sprite_frames(SF)
			set_animation("default")
			set_frame(bool(randi()%2))
			_set_playing(bool(randi()%2))
			qq += str(is_playing())
			play("default")
			stop()
	
			if Autoload.WRONG_BUGS:
				for i in range(4):
					SF.add_frame(str(randi() % 1000000),Autoload.loadA("res://RES/Sprite" + str(i + 1) + ".png"),randi() % Autoload.RANGE - Autoload.RANGE / 2)
				
				set_sprite_frames(SF)
				set_animation("default")
				set_frame(bool(randi()%2))
				_set_playing(bool(randi()%2))
				qq += str(is_playing())
				play(str(randi() % 1000000))
				stop()
	
		else: #RANDI
			if randi() % 2 == 1:
				for i in range(4):
					SF.add_frame(str(randi() % 1000000),Autoload.loadA("res://RES/Sprite" + str(i + 1) + ".png"),randi() % Autoload.RANGE - Autoload.RANGE / 2)
				
			if randi() % 2 == 1:
				set_sprite_frames(SF)
			if randi() % 2 == 1:
				set_animation("default")
			if randi() % 2 == 1:
				set_frame(bool(randi()%2))
			if randi() % 2 == 1:
				_set_playing(bool(randi()%2))
			if randi() % 2 == 1:
				qq += str(is_playing())
			if randi() % 2 == 1:
				play(str(randi() % 1000000))
			if randi() % 2 == 1:
				stop()
