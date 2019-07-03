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
		
		var q_AnimatedTexture : AnimatedTexture = AnimatedTexture.new()
		
		q_AnimatedTexture.set_frames(randi()%255 + 1)
		q_AnimatedTexture.set_fps(randf() * 50)
		
		qq += str(q_AnimatedTexture.get_frame_delay(randi()%50))
		qq += str(q_AnimatedTexture.get_frame_texture(randi()%50))
		
		q_AnimatedTexture.set_frame_delay(randi()%50,randf() * 50)
		q_AnimatedTexture.set_frame_texture(randi()%50,ImageTexture.new())
		
		
		if Autoload.WRONG_BUGS:
			q_AnimatedTexture.set_frames(randi() % 1000 - 500)
			q_AnimatedTexture.set_fps(randf() * 1000 - 500)
			
			qq += str(q_AnimatedTexture.get_frame_delay(randi() % 1000 - 500))
			qq += str(q_AnimatedTexture.get_frame_texture(randi() % 1000 - 500))
			
			q_AnimatedTexture.set_frame_delay(randi() % 1000 - 500,randf() * 1000 - 500)
			q_AnimatedTexture.set_frame_texture(randi() % 1000 - 500,ImageTexture.new())
