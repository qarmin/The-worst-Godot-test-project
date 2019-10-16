extends Node2D

var q_AnimatedTexture : AnimatedTexture = AnimatedTexture.new()
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
			q_AnimatedTexture = AnimatedTexture.new()
			
		
		if randi() % 2 == 1:
			q_AnimatedTexture.set_frames(Autoload.get_int())
		if randi() % 2 == 1:
			q_AnimatedTexture.set_fps(Autoload.get_float())
			
		if randi() % 2 == 1:
			qq += str(q_AnimatedTexture.get_frame_delay(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(q_AnimatedTexture.get_frame_texture(Autoload.get_int()))
			
		if randi() % 2 == 1:
			q_AnimatedTexture.set_frame_delay(Autoload.get_int(),Autoload.get_float())
		if randi() % 2 == 1:
			q_AnimatedTexture.set_frame_texture(Autoload.get_int(),Autoload.loadA("Sprite.png"))
